#!/bin/bash
ScriptLocation="."
if [[ $0 == '/'* ]];
then ScriptLocation="`dirname $0`"
else ScriptLocation="`pwd`"/"`dirname $0`"
fi
