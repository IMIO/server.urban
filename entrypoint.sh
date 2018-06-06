#!/bin/bash
set -e
CMD="unknown command"
cd $URBAN_DIR

if [[ "$1" = "zeo"* ]]; then
  CMD="bin/$1 fg"
fi 
if [[ "$1" = "instance"* ]]; then
  CMD="bin/$1 fg"
  echo "LAUNCH LIBREOFFICE"
fi
gosu imio $CMD
