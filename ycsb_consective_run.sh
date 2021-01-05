#!/bin/bash
set -x

DIR=/tmp/ycsb

run() {
    rm DIR/*
    bin/ycsb load rocksdb -s -P workloads/$1 -p rocksdb.dir=$DIR
    mv test.txt warm-$1.txt
    bin/ycsb run rocksdb -s -P workloads/$1 -p rocksdb.dir=$DIR
    mv test.txt test-$1.txt
    mkdir -p trace/$1
    mv warm-$1.txt trace/$1
    mv test-$1.txt trace/$1
}

run workloada
run workloadb
run workloadc
# run workloadd