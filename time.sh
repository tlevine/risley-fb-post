#!/bin/sh

echo datetime,request
cat /dev/stdin | sed 's/^.*\[\(.*\)\][^"]*"\([^"]*\)".*$/\1,\2/'
