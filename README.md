# YCSB-tracegen
Generate a trace file(YCSB-tracegen/test.txt) during running YCSB
#### Modification :
File : YCSB-tracegen/rocksdb/src/main/java/site/ycsb/db/rocksdb/RocksDBClient.java
<br>Function : read、update、insert、delete

## To Compile :
(need jdk and maven)
<br>mvn -pl site.ycsb:rocksdb-binding -am clean package</br>

## To Run :
(rocksdb.dir : where to put data)
<br>bin/ycsb load rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb</br>
bin/ycsb run rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb

#### For simplicity:
./ycsb.sh

### run again
rm /tmp/ycsb/*
rm test.txt

