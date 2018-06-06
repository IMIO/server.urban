#!/bin/bash
set -e
CMD="unknown command"
cd $URBAN_DIR

if [[ "$1" = "zeo"* ]]; then
  CMD="bin/$1 fg"
fi 
if [[ "$1" = "instance"* ]]; then
  soffice -invisible -headless "-accept=socket,host=localhost,port=2002;urp;" fg
  CMD="bin/$1 fg"
fi
gosu imio $CMD
