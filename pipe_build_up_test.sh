#!/bin/bash
set -e

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && pwd )"

docker build \
  --tag cyberdojo/inserter \
    ${ROOT_DIR}
