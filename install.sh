#!/bin/sh

srcFile='cygcmd.sh'
binName='cygcmd'
binDir='/usr/local/bin'

cd "`dirname "${0}"`"

src="${PWD}/${srcFile}"
dest="${binDir}/${binName}"
backup="${binDir}/.${binName}.bak"

if [ -e "${dest}" -a ! -e "${backup}" -a "`readlink "${dest}"`" != "${src}" ]
then
	mv "${dest}" "${backup}"
else
	rm -rf "${dest}"
fi

ln -s "${src}" "${dest}"
