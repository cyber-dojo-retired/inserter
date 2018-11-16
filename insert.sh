#!/bin/bash
set -e

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"

if [ -z ${1+x} ]; then
  echo "Pass the name of the container you wish to insert into"
  exit 1
fi

readonly CONTAINER=${1}
shift
for arg in $@; do
  case ${arg} in
    dup|old|new) ${ROOT_DIR}/${arg}/tar_pipe_in.sh ${CONTAINER}
  esac
done
