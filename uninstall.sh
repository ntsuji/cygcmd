#!/bin/sh

srcFile='cygcmd.sh'
binName='cygcmd'
binDir='/usr/local/bin'

cd "`dirname "${0}"`"

src="${PWD}/${srcFile}"
dest="${binDir}/${binName}"
backup="${binDir}/.${binName}.bak"

if [ "`readlink "${dest}"`" = "${src}" ]
then
	rm "${dest}"
	if [ -e "${backup}" ]
	then
		mv "${backup}" "${dest}"
	fi
fi
