#!/bin/bash
readonly src_file='cygcmd.sh'
readonly bin_name='cygcmd'
readonly bin_dir='/usr/local/bin'
cd "$(dirname "${0}")"
readonly src="${PWD}/${src_file}"
readonly dst="${bin_dir}/${bin_name}"
readonly backup="${bin_dir}/.${bin_name}.bak"
if [[ -e "${dst}" &&
    ! -e "${backup}" &&
    "$(readlink "${dst}")" != "${src}" ]]; then
  mv "${dst}" "${backup}"
else
  rm -rf "${dst}"
fi
ln -s "${src}" "${dst}"
