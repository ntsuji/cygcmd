#!/bin/bash

program="$1"
shift

i=0
for arg in "$@"
do
	if [ -e "$arg" ]
	then
		arg="`cygpath -w "$arg"`"
	fi

	args[$i]="$arg"
	i=`expr $i + 1`
done

"$program" "${args[@]}"
