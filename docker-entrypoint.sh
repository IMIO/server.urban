#!/bin/bash
set -e
CMD="bin/instance1 fg"

python /docker-initialize.py
mkdir -p /home/imio/server.urban/var/{log,instance-debug,filestorage,blobstorage,instance-async,instance-amqp,instance1}

if [[ "$1" == *"zeoserver"* ]]; then
    CMD="bin/$1 fg"
elif [[ ! -z $1 ]]; then
    CMD=$1
fi
$CMD 
