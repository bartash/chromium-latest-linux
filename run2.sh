#! /bin/bash

BASEDIR=$(dirname $0)

$BASEDIR/latest/chrome --user-data-dir="$BASEDIR/user-data-dir2" $* &> /dev/null &
