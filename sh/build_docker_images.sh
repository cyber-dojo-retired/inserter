#!/bin/bash

readonly ROOT_DIR="$( cd "$( dirname "${0}" )" && cd .. && pwd )"

docker build --tag cyberdojo/inserter ${ROOT_DIR}
