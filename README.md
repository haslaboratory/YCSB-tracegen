# YCSB-tracegen
Generate a trace file(YCSB-tracegen/test.txt) during running

Modification :
File : YCSB-tracegen/rocksdb/src/main/java/site/ycsb/db/rocksdb/RocksDBClient.java
Function : read、update、insert、delete

## To Compile :
mvn -pl site.ycsb:rocksdb-binding -am clean package

## To Run :
//rocksdb.dir : where to put data
bin/ycsb load rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb
bin/ycsb run rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb

## For simplicity:
./ycsb.sh
