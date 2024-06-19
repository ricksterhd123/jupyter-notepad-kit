#! /usr/bin/bash
set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

docker build . -t notebooks:latest --target=build
docker run -v $SCRIPT_DIR/build:/notebooks/build notebooks:latest
