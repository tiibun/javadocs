#!/bin/sh -eu

DOCS_DIR=$(dirname $0)/../../../docs/openjdk/8

[ -d ${DOCS_DIR} ] || mkdir -p ${DOCS_DIR}
docker build -t javadoc-openjdk .
cd ${DOCS_DIR}
docker run --rm -v ${PWD}:/tmp javadoc-openjdk sh -c "cp -r docs/* /tmp"
