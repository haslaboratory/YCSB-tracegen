#!/bin/bash
DIR=/tmp/ycsb
rm ${DIR}/*
bin/ycsb load rocksdb -s -P workloads/workloadc -p rocksdb.dir=${DIR}
mv test.txt warm.txt
bin/ycsb run rocksdb -s -P workloads/workloadc -p rocksdb.dir=${DIR}
