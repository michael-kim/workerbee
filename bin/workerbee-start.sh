#!/usr/bin/env bash

usage="Usage: workerbee-server.sh (start|stop|status)"

# if no args specified, show usage
if [ $# -ne 1 ]; then
	echo $usage
	exit 1
fi

# command arg should be 'start' or 'stop' or 'status'
command=$1
case $command in
  (start) ;;
  (stop) ;;
  (status) ;;
  (*)
  	echo $usage
	exit 1
  	;;
esac

# global variables
WORKERBEE_PID_FILE=${WORKERBEE_PID_FILE:-/tmp/workerbee.pid}
WORKERBEE_SERVER_CLASSNAME=com.nexr.workerbee.server.WorkerbeeServer
WORKERBEE_SERVER_NAME=WorkerbeeServer

function add_to_classpath() {
  dir=$1
  for jar in $dir/*.jar; do
  	WORKERBEE_CLASSPATH=${WORKERBEE_CLASSPATH}:$jar;
  done
}

function start_server() {

# Set WORKERBEE_HOME
bin=`dirname $0`
bin=`cd ${bin} && pwd`

if [ -z "$WORKERBEE_HOME" ]; then
  echo "WORKERBEE_HOME is not specified."
  export WORKERBEE_HOME=${bin}/..
  echo "Alternate workerbee home dir location : $WORKERBEE_HOME"
fi

# Set WORKERBEE_CONF_DIR
WORKERBEE_CONF_DIR=${WORKERBEE_CONF_DIR:-${WORKERBEE_HOME}/conf}

workerbee_env=${WORKERBEE_CONF_DIR}/workerbee-env.sh
# Apply workerbee-env.sh
if [ -f "$workerbee_env" ]; then
  source $workerbee_env
fi

# check if JAVA_HOME is specified
if [ -z "$JAVA_HOME" ]; then
  echo "You have to set JAVA_HOME path."
  exit 1
fi 

# Set WORKERBEE_HTTP_PORT
WORKERBEE_HTTP_PORT=${WORKERBEE_HTTP_PORT:-12000}

# Add Workerbee dependencies to classpath.
add_to_classpath $WORKERBEE_HOME
add_to_classpath $JAVA_HOME/lib
WORKERBEE_CLASSPATH=${WORKERBEE_CLASSPATH:-""}
WORKERBEE_LIB=${WORKERBEE_LIB:-$WORKERBEE_HOME/lib}
if [ -d "$WORKERBEE_LIB" ]; then
	add_to_classpath $WORKERBEE_LIB
fi
WORKERBEE_CLASSPATH=${WORKERBEE_CONF_DIR}:${WORKERBEE_CLASSPATH}

# Set WORKERBEE_LOG_DIR
if [ -z "$WORKERBEE_LOG_DIR" ]; then
  WORKERBEE_LOG_DIR="$WORKERBEE_HOME/logs"
fi

  # check if service is already running, if so exit
  PID=`jps | grep $WORKERBEE_SERVER_NAME | awk '{ print $1 }'`
  if [ -n "$PID" ] ; then
    echo "Workerbee server is already running. Stop it first. PID=$PID"
    exit 1
  fi
  if [ -s "$WORKERBEE_PID_FILE" ]
  then
    echo "Remove $WORKERBEE_PID_FILE and re-run this script."
    exit 1
  fi

  # check if workerbee-site.xml exists
  workerbee_site=${WORKERBEE_CONF_DIR}/workerbee-site.xml
  if [ ! -e $workerbee_site ]
  then
    echo "Missing workerbee-site.xml, expected at [$workerbee_site]";
    exit 1
  fi

  # create log dir
  mkdir -p "$WORKERBEE_LOG_DIR"
 
  # Export env variables 
  export WORKERBEE_HTTP_PORT
  export WORKERBEE_CONF_DIR
  export WORKERBEE_LOG_DIR
  export WORKERBEE_CLASSPATH  
  export CLASSPATH=$WORKERBEE_CLASSPATH:$CLASSPATH

  echo "Starting Workerbee Server..."
  echo ""
  echo "Setting WORKERBEE_HOME      : $WORKERBEE_HOME"
  echo "Setting WORKERBEE_CONF_DIR  : $WORKERBEE_CONF_DIR"  
  echo "Setting WORKERBEE_LOG_DIR   : $WORKERBEE_LOG_DIR"
  echo "Setting WORKERBEE_HTTP_PORT : $WORKERBEE_HTTP_PORT"
  #echo "CLASSPATH=$CLASSPATH"

  # back ground the metastore service and record the pid
  SLEEP_TIME_AFTER_START=3

  # startup workerbee server
  nohup $JAVA_HOME/bin/java -classpath "$CLASSPATH" $WORKERBEE_SERVER_CLASSNAME "$@" > $WORKERBEE_LOG_DIR/workerbee.out 2>&1 < /dev/null &
  
  PID=$!

  if [ "${PID}x" == "x" ] ; then # we failed right off
    echo "Workerbee startup failed, see ${WORKERBEE_LOG_DIR}/workerbee.out"
    exit 1
  fi

  echo ""
  echo "Workerbee init ..."
  sleep $SLEEP_TIME_AFTER_START

  if ps -p $PID > /dev/null 
  then
    echo $PID > $WORKERBEE_PID_FILE
	echo "http://localhost:$WORKERBEE_HTTP_PORT/workerbee"
    echo "Workerbee started successfully, PID=$PID"
  else
    echo "ERROR: Workerbee startup failed, see ${WORKERBEE_LOG_DIR}/workerbee.out"
    exit 1
  fi
} # start_server

function stop_server() {

  SLEEP_TIME_AFTER_KILL=1

  # check if service is already running, if so exit
  if [ -s "$WORKERBEE_PID_FILE" ] ; then
	# if exists pid file
    PID=`cat $WORKERBEE_PID_FILE`
  else
	# if not exists pid file
    echo "Not found the file contains workerbee daemon pid. $WORKERBEE_PID_FILE"
    PID=`jps | grep $WORKERBEE_SERVER_NAME | awk '{ print $1 }'`
    if [ -z "$PID" ] ; then
		echo "No workerbee server to stop."
    	exit 1
    fi
  fi
  echo "Found workerbee server PID=$PID, killing .."
  kill $PID
  sleep $SLEEP_TIME_AFTER_KILL

  # if process is still around, use kill -9
  if ps -p $PID > /dev/null ; then
      echo "Initial kill failed, trying to kill the process with -9 option (non-catchable, non-ignorable kill)"
      kill -9 $PID 
  	sleep $SLEEP_TIME_AFTER_KILL
  fi
  if ps -p $PID > /dev/null ; then
      echo "Even kill -9 failed, giving up; sorry."
      exit 1
  else
      rm -rf $WORKERBEE_PID_FILE
      echo "Workerbee server shutdown."
  fi
}

function status_server(){
    PID=`jps | grep $WORKERBEE_SERVER_NAME | awk '{ print $1 }'`
    if [ -z "$PID" ] ; then
	echo "No workerbee server."
    	exit 1
    else
	echo "Workerbee server is running. PID=$PID"
	exit 1
    fi
}

case $command in
  (start)
    start_server
    ;;
  (stop)	
    stop_server
    ;;
  (status)
    status_server
    ;;
  (*)
  	echo $usage
	exit 1
  	;;
esac
