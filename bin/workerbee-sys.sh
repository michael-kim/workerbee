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

if [ "${WORKERBEE_CONFIG_DIR}" = "" ]; then
  export WORKERBEE_CONFIG_DIR=${WORKERBEE_HOME}/conf
  print "Setting WORKERBEE_CONFIG_DIR:    ${WORKERBEE_CONFIG_DIR}"
else
  print "Using   WORKERBEE_CONFIG_DIR:    ${WORKERBEE_CONFIG_DIR}"
fi
workerbee_config_dir=${WORKERBEE_CONFIG_DIR}

# if the configuration dir has a env file, source it
#
if [ -e "${WORKERBEE_CONFIG_DIR}/workerbee-env.sh" ]; then
  print "Sourcing:                    ${WORKERBEE_CONFIG_DIR}/workerbee-env.sh"
  source ${WORKERBEE_CONFIG_DIR}/workerbee-env.sh
  grep "^ *export " ${WORKERBEE_CONFIG_DIR}/workerbee-env.sh | sed 's/ *export/  setting/'
fi

# verify that the sourced env file didn't change WORKERBEE_HOME
# if so, warn and revert
#
if [ "${WORKERBEE_HOME}" != "${workerbee_home}" ]; then
  print "WARN: WORKERBEE_HOME resetting to ''${WORKERBEE_HOME}'' ignored"
  export WORKERBEE_HOME=${workerbee_home}
fi

# verify that the sourced env file didn't change WORKERBEE_CONFIG_DIR
# if so, warn and revert
#
if [ "${WORKERBEE_CONFIG_DIR}" != "${workerbee_config_dir}" ]; then
  print "WARN: The sourced env file doesn't allow to change WOKERBEE_CONFIG_DIR"
  print "WARN: WORKERBEE_CONFIG_DIR resetting to ''${WORKERBEE_CONFIG_DIR}'' ignored"
  export WORKERBEE_CONFIG_DIR=${workerbee_config_dir}
fi

if [ "${WORKERBEE_CONFIG_FILE}" = "" ]; then
  export WORKERBEE_CONFIG_FILE="workerbee-site.xml"
  print "Setting WORKERBEE_CONFIG_FILE:   ${WORKERBEE_CONFIG_FILE}"
else
  print "Using   WORKERBEE_CONFIG_FILE:   ${WORKERBEE_CONFIG_FILE}"
fi

if [ "${WORKERBEE_TEMP}" = "" ]; then
  export WORKERBEE_TEMP=${WORKERBEE_HOME}/temp
  print "Setting WORKERBEE_TEMP:          ${WORKERBEE_TEMP}"
else
  print "Using   WORKERBEE_TEMP:          ${WORKERBEE_TEMP}"
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

if [ "${WORKERBEE_LOG4J_FILE}" = "" ]; then
  export WORKERBEE_LOG4J_FILE="workerbee-log4j.properties"
  print "Setting WORKERBEE_LOG4J_FILE:    ${WORKERBEE_LOG4J_FILE}"
else
  print "Using   WORKERBEE_LOG4J_FILE:    ${WORKERBEE_LOG4J_FILE}"
fi

if [ "${WORKERBEE_LOG4J_RELOAD}" = "" ]; then
  export WORKERBEE_LOG4J_RELOAD="10"
  print "Setting WORKERBEE_LOG4J_RELOAD:  ${WORKERBEE_LOG4J_RELOAD}"
else
  print "Using   WORKERBEE_LOG4J_RELOAD:  ${WORKERBEE_LOG4J_RELOAD}"
fi

if [ "${WORKERBEE_HTTP_HOSTNAME}" = "" ]; then
  export WORKERBEE_HTTP_HOSTNAME=`hostname -f`
  print "Setting WORKERBEE_HTTP_HOSTNAME: ${WORKERBEE_HTTP_HOSTNAME}"
else
  print "Using   WORKERBEE_HTTP_HOSTNAME: ${WORKERBEE_HTTP_HOSTNAME}"
fi

if [ "${WORKERBEE_HTTP_PORT}" = "" ]; then
  export WORKERBEE_HTTP_PORT=12000
  print "Setting WORKERBEE_HTTP_PORT:     ${WORKERBEE_HTTP_PORT}"
else
  print "Using   WORKERBEE_HTTP_PORT:     ${WORKERBEE_HTTP_PORT}"
fi

if [ "${WORKERBEE_PID}" = "" ]; then
  export WORKERBEE_PID=${WORKERBEE_HOME}/temp/workerbee.pid
  print "Setting WORKERBEE_PID:           ${WORKERBEE_PID}"
else
  print "Using   WORKERBEE_PID:           ${WORKERBEE_PID}"
fi

if [ "${WORKERBEE_LOG_FILE}" = "" ]; then
  export WORKERBEE_LOG_FILE=${WORKERBEE_LOG_DIR}/workerbee.out
  print "Setting WORKERBEE_LOG_FILE:      ${WORKERBEE_LOG_FILE}"
else
  print "Using   WORKERBEE_LOG_FILE:      ${WORKERBEE_LOG_FILE}"
fi

print
