#!/bin/bash
set -e

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly STORER_CONTAINER=${1}
readonly KATAS_ROOT=/usr/src/cyber-dojo/katas
shift

# - - - - - - - - - - - - - - - - - - - - - - - -
# make sure ${KATAS_ROOT} dir exists in storer-container

docker exec \
  --user root \
  ${STORER_CONTAINER} \
    sh -c "mkdir -p ${KATAS_ROOT}"

# - - - - - - - - - - - - - - - - - - - - - - - -
# tar pipe named test-data set into storer-container
# and set its ownership.

for arg in $@
do
  ${ROOT_DIR}/${arg}/tar_pipe_in.sh \
      ${STORER_CONTAINER} ${KATAS_ROOT}
done

# - - - - - - - - - - - - - - - - - - - - - - - -
# set ownership of root dir in storer-container.

docker exec \
  --user root \
  ${STORER_CONTAINER} \
    sh -c "chown storer ${KATAS_ROOT}"
