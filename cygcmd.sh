#!/bin/bash
readonly program="${1}"
shift
i=0
for arg in "${@}"; do
  if [[ -e "${arg}" ]]; then
    arg="$(cygpath -w "${arg}")"
  fi
  args["${i}"]="${arg}"
  ((i++))
done
"${program}" "${args[@]}"
