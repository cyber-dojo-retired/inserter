#!/bin/bash
set -e

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly STORER_CONTAINER=${1}
readonly KATAS_ROOT=${2}

# - - - - - - - - - - - - - - - - - - - - - - - -

echo "inserting lots of katas into ${STORER_CONTAINER}"
echo "...7E..."
cat ${MY_DIR}/lot.tgz \
  | docker exec \
      --user root \
      --interactive \
      ${STORER_CONTAINER} \
          sh -c "tar -zxf - -C ${KATAS_ROOT}"
