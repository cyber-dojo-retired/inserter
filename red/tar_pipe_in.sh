#!/bin/bash
set -e

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly STORER_CONTAINER=${1}
readonly KATAS_ROOT=${2}

echo -n '.'
cat ${MY_DIR}/red.tgz \
  | docker exec \
      --user root \
      --interactive \
      ${STORER_CONTAINER} \
          sh -c "tar -zxf - -C ${KATAS_ROOT}"

docker exec \
  --user root \
  ${STORER_CONTAINER} \
    sh -c "chown -R storer \
      ${KATAS_ROOT}/02 \
      ${KATAS_ROOT}/03 \
      ${KATAS_ROOT}/05 \
      ${KATAS_ROOT}/34 \
      ${KATAS_ROOT}/7E"
