#!/bin/bash

usage="Usage: workerbee.sh (start|stop)"

if [ $# -ne 1 ]; then
	echo $usage
	exit 1
fi

actionCmd=$1

case $actionCmd in
	(start|stop)
	;;
	(*)
		echo $usage
		exit 1
	;;
esac

# resolve links - $0 may be a softlink
PRG="${0}"

while [ -h "${PRG}" ]; do
		ls=`ls -ld "${PRG}"`
		link=`expr "$ls" : '.*-> \(.*\)$'`
		if expr "$link" : '/.*' > /dev/null; then
			PRG="$link"
		else
			PRG=`dirname "${PRG}"`/"$link"
		fi
done

BASEDIR=`dirname ${PRG}`
BASEDIR=`cd ${BASEDIR}/..;pwd`

CLASSPATH=""
for i in "${BASEDIR}/lib/"*.jar; do
	CLASSPATH="${CLASSPATH}:$i"
done

if test -z ${JAVA_HOME}
then
	JAVA_BIN=java
else
	JAVA_BIN=${JAVA_HOME}/bin/java
fi

source ${BASEDIR}/bin/lib/workerbee-config.sh

if [ "$actionCmd" = "start" ] ; then


  if [ ! -z "$WORKERBEE_PID" ]; then
    if [ -f "$WORKERBEE_PID" ]; then
      if [ -s "$WORKERBEE_PID" ]; then
        echo "INFO: Existing PID file found during start."
        if [ -r "$WORKERBEE_PID" ]; then
          PID=`cat "$WORKERBEE_PID"`
          ps -p $PID >/dev/null 2>&1
          if [ $? -eq 0 ] ; then
            echo "ERROR: Workerbee server appears to still be running with PID $PID. Start aborted."
            exit 1
          else
            echo "INFO: Removing/clearing stale PID file."
            rm -f "$WORKERBEE_PID" >/dev/null 2>&1
            if [ $? != 0 ]; then
              if [ -w "$WORKERBEE_PID" ]; then
                cat /dev/null > "$WORKERBEE_PID"
              else
                echo "ERROR: Unable to remove or clear stale PID file. Start aborted."
                exit 1
              fi
            fi
          fi
        else
          echo "ERROR: Unable to read PID file. Start aborted."
          exit 1
        fi
      else
        rm -f "$WORKERBEE_PID" >/dev/null 2>&1
        if [ $? != 0 ]; then
          if [ ! -w "$WORKERBEE_PID" ]; then
            echo "ERROR: Unable to remove or write to empty PID file. Start aborted."
            exit 1
          fi
        fi
      fi
    fi
  fi

  touch "$WORKERBEE_PID"


  nohup ${JAVA_BIN} -cp ${CLASSPATH} com.nexr.workerbee.server.WorkerbeeServer ${@} >> $WORKERBEE_STDOUT 2> $WORKERBEE_STDERR &

  SLEEP_TIME_AFTER_START=10
  PID=$!
  if [ "${PID}x" == "x" ] ; then # we failed right off
  	echo "ERROR: Workerbee startup failed, see $WORKERBEE_STDERR"
		cat $WORKERBEE_STDERR
		exit 1
  fi

  echo "INFO: Started Workerbee server init, testing if initialized correctly..."
   
  while [ $SLEEP_TIME_AFTER_START -ge 0 ]; do
	echo "INFO: Waiting for $SLEEP_TIME_AFTER_START seconds"
	if [ $SLEEP_TIME_AFTER_START -le 3 ]; then
	  sleep $SLEEP_TIME_AFTER_START 
	else
	  sleep 3
	fi
    SLEEP_TIME_AFTER_START=`expr $SLEEP_TIME_AFTER_START - 3`
  done

	if ps -p $PID > /dev/null
	then
		echo $PID > $WORKERBEE_PID
		echo "INFO: Workerbee initialized successfully."
		echo "INOF: You can access the following URL http://127.0.0.1:$WORKERBEE_HTTP_PORT/$WORKERBEE_ROOT_CONTEXT"
	else
		echo "ERROR: Workerbee startup failed, see $WORKERBEE_STDERR"
		cat $WORKERBEE_STDERR
		exit 1
	fi

elif [ "$actionCmd" = "stop" ] ; then

  SLEEP=5

  FORCE_STOP=1

  if [ ! -z "$WORKERBEE_PID" ]; then
    if [ -f "$WORKERBEE_PID" ]; then
      if [ -s "$WORKERBEE_PID" ]; then
        kill -0 `cat "$WORKERBEE_PID"` >/dev/null 2>&1
        if [ $? -gt 0 ]; then
          echo "ERROR: PID file found but no matching process was found. Stop aborted."
          exit 1
        fi
      else
        echo "INFO: PID file is empty and has been ignored."
      fi
    else
      echo "ERROR: \$WORKERBEE_PID was set but the specified file does not exist. Is Workerbee server running? Stop aborted."
      exit 1
    fi
  fi
  

  if [ ! -z "$WORKERBEE_PID" ]; then
    if [ -f "$WORKERBEE_PID" ]; then
      while [ $SLEEP -ge 0 ]; do
        kill -0 `cat "$WORKERBEE_PID"` >/dev/null 2>&1
        if [ $? -gt 0 ]; then
          rm -f "$WORKERBEE_PID" >/dev/null 2>&1
          if [ $? != 0 ]; then
            if [ -w "$WORKERBEE_PID" ]; then
              cat /dev/null > "$WORKERBEE_PID"
            else
              echo "WARN: Workerbee server stopped but the PID file could not be removed or cleared."
            fi
          fi
          break
        fi
        if [ $SLEEP -gt 0 ]; then
          sleep 1
        fi
        if [ $SLEEP -eq 0 ]; then
          if [ $FORCE_STOP -eq 0 ]; then
            echo "WARN: Workerbee server did not stop in time. PID file was not removed."
          fi
        fi
        SLEEP=`expr $SLEEP - 1 `
      done
    fi
  fi

  if [ $FORCE_STOP -eq 1 ]; then
    if [ -z "$WORKERBEE_PID" ]; then
      echo "ERROR: Kill failed: \$WORKERBEE_PID not set"
    else
      if [ -f "$WORKERBEE_PID" ]; then
        PID=`cat "$WORKERBEE_PID"`
        echo "INFO: Killing Workerbee server with the PID: $PID"
        kill -9 $PID
        rm -f "$WORKERBEE_PID" >/dev/null 2>&1
        if [ $? != 0 ]; then
          echo "WARN: Workerbee server was killed but the PID file could not be removed."
        fi
      fi
    fi
  fi

fi

