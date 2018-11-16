#!/bin/bash
set -e

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"

if [ -z ${1+x} ]; then
  echo "Pass the name of the container you wish to insert into"
  exit 1
fi

readonly CONTAINER=${1}
shift

${ROOT_DIR}/dup/tar_pipe_in.sh ${CONTAINER}
${ROOT_DIR}/old/tar_pipe_in.sh ${CONTAINER}
${ROOT_DIR}/new/tar_pipe_in.sh ${CONTAINER}
