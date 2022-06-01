#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
javac -d ${TIBEMS_BIN} ${TIBEMS_SRC}/*.java
echo "OK"
java tibjmsMsgConsumer -server ${TIBCO_SERVER_URL} -user ${TIBCO_USER} -password ${TIBCO_PASSWORD} -queue ${TIBCO_QUEUE}
