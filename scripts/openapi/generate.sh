#!/bin/bash

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

PACKAGE_NAME=todo

# serverのコードを生成
docker run --rm \
    -it \
    -v ${SCRIPT_DIR}/../../openapi:/input \
    -v ${SCRIPT_DIR}/../../backend/${PACKAGE_NAME}:/output \
    oapi-codegen-cli \
    -input /input/openapi.yaml \
    -output /output/server.go \
    -package ${PACKAGE_NAME} \
    -generate server

# 型定義のコードを生成
docker run --rm \
    -it \
    -v ${SCRIPT_DIR}/../../openapi:/input \
    -v ${SCRIPT_DIR}/../../backend/${PACKAGE_NAME}:/output \
    oapi-codegen-cli \
    -input /input/openapi.yaml \
    -output /output/types.go \
    -package ${PACKAGE_NAME} \
    -generate types