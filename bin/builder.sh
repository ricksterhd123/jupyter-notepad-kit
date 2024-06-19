#! /usr/bin/bash
set -e
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BUILD_DIR=$SCRIPT_DIR/../build/

mkdir -p $BUILD_DIR
for filename in $SCRIPT_DIR/../notes/*.ipynb; do
    jupyter nbconvert --output-dir=$BUILD_DIR --to HTML $filename
done
