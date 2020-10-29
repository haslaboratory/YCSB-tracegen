# YCSB-tracegen
Generate a trace file(YCSB-tracegen/test.txt) during running
Modification :
<br>File : YCSB-tracegen/rocksdb/src/main/java/site/ycsb/db/rocksdb/RocksDBClient.java</br>
Function : read、update、insert、delete

## To Compile :
(need jdk and maven)
mvn -pl site.ycsb:rocksdb-binding -am clean package

## To Run :
(rocksdb.dir : where to put data)
<br>bin/ycsb load rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb</br>
<br>bin/ycsb run rocksdb -s -P workloads/workloadc -p rocksdb.dir=/tmp/ycsb</br>

## For simplicity:
./ycsb.sh
