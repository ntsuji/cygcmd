#!/bin/sh

srcFile='cygcmd.sh'
binName='cygcmd'
binDir='/usr/local/bin'

cd "`dirname "${0}"`"

if [ -e "${binDir}/${binName}" -a ! -e "${binDir}/.${binName}.bak" \
	-a "`ls -al "${binDir}" | fgrep " ${binName} " | sed 's/.*-> \(.*\)/\1/'`" != "${PWD}/${srcFile}" ]
then
	mv "${binDir}/${binName}" "${binDir}/${binName}.bak"
else
	rm -rf "${binDir}/${binName}"
fi

ln -s "${PWD}/${srcFile}" "${binDir}/${binName}"
