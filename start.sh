#!/bin/bash

rm -rf dump.rdb
rm -rf appendonly.aof

sleep 2

./redis-server ../redis.conf
