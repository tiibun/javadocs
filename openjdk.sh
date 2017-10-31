#!/bin/bash

[ ! -d tmp ] && mkdir tmp
cd tmp
hg clone http://hg.openjdk.java.net/jdk8u/jdk8u
cd jdk8u
sh ./get_source.sh
bash configure
make docs
