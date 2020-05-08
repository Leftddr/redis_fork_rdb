#!/bin/bash

FILENAME1="dump.rdb"
FILENAME2="appendonly.aof"

if [ -f $FILENAME1 ]; then
	echo "rm -rf dump.rdb"
	rm -rf $FILENAME1
fi
if [ -f $FILENAME2 ]; then
	echo "rm -rf appendonly.aof"
	rm -rf $FILENAME2
fi

echo "Ready to start redis-server"
sleep 2
./redis-server ../redis.conf
