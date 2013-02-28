#!/bin/bash

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


function print() {
  if [ "${ECHO}" != "false" ]; then
    echo "$@"
  fi
}

ECHO="true"
if [ "${1}" == "-silent" ]; then
  ECHO="false"
  # if WORKERBEE_HOME is already set warn it will be ignored
  #
  if [ "${WORKERBEE_HOME}" != "" ]; then
    print "WARNING: current setting of WORKERBEE_HOME ignored"
  fi
fi

print

# setting WORKERBEE_HOME to the installation dir, it cannot be changed
#
export WORKERBEE_HOME=${BASEDIR}
workerbee_home=${WORKERBEE_HOME}
print "Setting WORKERBEE_HOME:          ${WORKERBEE_HOME}"

if [ "${WORKERBEE_CHECK_OWNER}" = "true" ]; then
  # checking that the user starting/stopping/setting-up Workerbee is the owner
  #
  workerbee_user=`ls -ld ${WORKERBEE_HOME} | awk '{print $3}'`
  current_user=`id | awk '{print $1}' | sed 's/.*(//' | sed 's/).*//'`
  if [ "${workerbee_user}" != "${current_user}" ]; then
    echo
    echo "ERROR: current user '${current_user}' different from Workerbee user '${workerbee_user}'"
    echo
    exit -1
  fi
fi

# verify that the sourced env file didn't change WORKERBEE_HOME
# if so, warn and revert
#
if [ "${WORKERBEE_HOME}" != "${workerbee_home}" ]; then
  print "WARN: The sourced env file doesn't allow to change WORKERBEE_HOME"
  print "WARN: WORKERBEE_HOME resetting to ''${WORKERBEE_HOME}'' ignored"
  export WORKERBEE_HOME=${workerbee_home}
  print "  using WORKERBEE_HOME:          ${WORKERBEE_HOME}"
fi

if [ "${WORKERBEE_CONF_DIR}" = "" ]; then
  export WORKERBEE_CONF_DIR=${WORKERBEE_HOME}/conf
  print "Setting WORKERBEE_CONF_DIR:      ${WORKERBEE_CONF_DIR}"
else
  print "Using   WORKERBEE_CONF_DIR:      ${WORKERBEE_CONF_DIR}"
fi
workerbee_conf_dir=${WORKERBEE_CONF_DIR}

# if the configuration dir has a env file, source it
#
if [ -e "${WORKERBEE_CONF_DIR}/workerbee-env.sh" ]; then
  print "Sourcing:                        ${WORKERBEE_CONF_DIR}/workerbee-env.sh"
  source ${WORKERBEE_CONF_DIR}/workerbee-env.sh
  grep "^ *export " ${WORKERBEE_CONF_DIR}/workerbee-env.sh | sed 's/ *export/  setting/'
fi

# verify that the sourced env file didn't change WORKERBEE_HOME
# if so, warn and revert
#
if [ "${WORKERBEE_HOME}" != "${workerbee_home}" ]; then
  print "WARN: WORKERBEE_HOME resetting to ''${WORKERBEE_HOME}'' ignored"
  export WORKERBEE_HOME=${workerbee_home}
fi

# verify that the sourced env file didn't change WORKERBEE_CONF_DIR
# if so, warn and revert
#
if [ "${WORKERBEE_CONF_DIR}" != "${workerbee_conf_dir}" ]; then
  print "WARN: The sourced env file doesn't allow to change WORKERBEE_CONF_DIR"
  print "WARN: WORKERBEE_CONF_DIR resetting to ''${WORKERBEE_CONF_DIR}'' ignored"
  export WORKERBEE_CONF_DIR=${workerbee_conf_dir}
fi

if [ "${WORKERBEE_CONF_FILE}" = "" ]; then
  export WORKERBEE_CONF_FILE="workerbee-site.xml"
  print "Setting WORKERBEE_CONF_FILE:     ${WORKERBEE_CONF_FILE}"
else
  print "Using   WORKERBEE_CONF_FILE:     ${WORKERBEE_CONF_FILE}"
fi

if [ "${WORKERBEE_LOG4J_FILE}" = "" ]; then
  export WORKERBEE_LOG4J_FILE="workerbee-log4j.xml"
  print "Setting WORKERBEE_LOG4J_FILE:     ${WORKERBEE_LOG4J_FILE}"
else
  print "Using   WORKERBEE_LOG4J_FILE:     ${WORKERBEE_LOG4J_FILE}"
fi

if [ "${WORKERBEE_TMPDIR}" = "" ]; then
  export WORKERBEE_TMPDIR=${WORKERBEE_HOME}/tmp
  print "Setting WORKERBEE_TMPDIR:        ${WORKERBEE_TMPDIR}"
else
  print "Using   WORKERBEE_TMPDIR:        ${WORKERBEE_TMPDIR}"
fi

if [ ! -f ${WORKERBEE_TMPDIR} ]; then
  mkdir -p ${WORKERBEE_TMPDIR}
fi

if [ "${WORKERBEE_LOG_DIR}" = "" ]; then
  export WORKERBEE_LOG_DIR=${WORKERBEE_HOME}/logs
  print "Setting WORKERBEE_LOG_DIR:       ${WORKERBEE_LOG_DIR}"
else
  print "Using   WORKERBEE_LOG_DIR:       ${WORKERBEE_LOG_DIR}"
fi

if [ ! -f ${WORKERBEE_LOG_DIR} ]; then
  mkdir -p ${WORKERBEE_LOG_DIR}
fi

if [ "${WORKERBEE_HTTP_PORT}" = "" ]; then
  export WORKERBEE_HTTP_PORT=12000
  print "Setting WORKERBEE_HTTP_PORT:     ${WORKERBEE_HTTP_PORT}"
else
  print "Using   WORKERBEE_HTTP_PORT:     ${WORKERBEE_HTTP_PORT}"
fi

if [ "${WORKERBEE_ROOT_CONTEXT}" = "" ]; then
  export WORKERBEE_ROOT_CONTEXT=/workerbee
  print "Setting WORKERBEE_ROOT_CONTEXT:  ${WORKERBEE_ROOT_CONTEXT}"
else
  print "Using   WORKERBEE_ROOT_CONTEXT:  ${WORKERBEE_ROOT_CONTEXT}"
fi

if [ "${WORKERBEE_PID}" = "" ]; then
  export WORKERBEE_PID=${WORKERBEE_TMPDIR}/workerbee.pid
  print "Setting WORKERBEE_PID:           ${WORKERBEE_PID}"
else
  print "Using   WORKERBEE_PID:           ${WORKERBEE_PID}"
fi

if [ "${WORKERBEE_STDOUT}" = "" ]; then
  export WORKERBEE_STDOUT=${WORKERBEE_LOG_DIR}/workerbee.out
  print "Setting WORKERBEE_STDOUT:           ${WORKERBEE_STDOUT}"
else
  print "Using   WORKERBEE_STDOUT:           ${WORKERBEE_STDOUT}"
fi

if [ "${WORKERBEE_STDERR}" = "" ]; then
  export WORKERBEE_STDERR=${WORKERBEE_LOG_DIR}/workerbee.err
  print "Setting WORKERBEE_STDERR:           ${WORKERBEE_STDERR}"
else
  print "Using   WORKERBEE_STDERR:           ${WORKERBEE_STDERR}"
fi

print
