#!/bin/bash
set -x
cd build
pkill -9 observer
./bin/observer -f ../etc/observer.ini -s miniob.sock > error.log 2>&1 &
sleep 1
./bin/obclient -s miniob.sock
