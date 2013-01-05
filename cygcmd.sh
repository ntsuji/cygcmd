#!/bin/sh

program="$1"
shift

args=''

for arg in "$@"
do
	if [ -e "$arg" ]
	then
		arg="`cygpath -w "$arg"`"
	fi
	args="$args \"$arg\""
done

"$program" $args
