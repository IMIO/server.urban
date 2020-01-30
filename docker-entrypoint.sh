#!/bin/bash
set -e
BIN_COMMANDS="instance zeo"
CMD="instance1 fg"

python /docker-initialize.py
mkdir -p /home/imio/server.urban/var/{log,instance-debug,filestorage,blobstorage,instance-async,instance-amqp,instance1}

if [[ "$1" == "$BIN_COMMANDS"* ]]; then
	CMD="bin/$1"
else
    CMD=$1
fi
$CMD

