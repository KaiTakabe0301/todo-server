#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Generate OpenAPI spec
docker run --rm \
    -it \
    -v ${SCRIPT_DIR}/../../openapi:/input \
    -v ${SCRIPT_DIR}/../../gen:/output \
    oapi-codegen-cli \
    -input /input/openapi.yaml \
    -output /output/todo.gen.go \
    -package todo