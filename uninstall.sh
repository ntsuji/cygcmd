#!/bin/sh

srcFile='cygcmd.sh'
binName='cygcmd'
binDir='/usr/local/bin'

cd "`dirname "${0}"`"

if [ "`ls -al "${binDir}" | fgrep " ${binName} " | sed 's/.*-> \(.*\)/\1/'`" = "${PWD}/${srcFile}" ]
then
	rm "${binDir}/${binName}"
	if [ -e "${binDir}/.${binName}.bak" ]
	then
		mv "${binDir}/${binName}.bak" "${binDir}/${binName}"
	fi
fi
