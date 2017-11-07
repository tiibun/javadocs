#!/bin/sh -eu

DOCS_DIR=$(dirname $0)/../../../docs/junit/5

[ -d ${DOCS_DIR} ] || mkdir -p ${DOCS_DIR}
docker build -t javadoc-junit:5 .
cd ${DOCS_DIR}
docker run --rm -v ${DOCS_DIR}:/tmp javadoc-junit:5 sh -c "cp -r build/docs/javadoc/* /tmp"
