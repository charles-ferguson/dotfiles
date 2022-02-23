#!/bin/bash
set -euo pipefail

_green() {
  printf "\001\033[0;31;32m\002%s\001\033[0m\002" "${1}"
}

_red() {
  printf "\001\033[0;31;31m\002%s\001\033[0m\002" "${1}"
}

_blue() {
  printf "\001\033[0;31;34m\002%s\001\033[0m\002" "${1}"
}

PS_DIR=$(_green "${PWD/$HOME\//~/}")
PS_HOST=$(_blue "$(hostname)")
PS_USER=$(_green "$(whoami)")

_user() {
  _green "$(whoami)"
}

_git_prompt() {
  local branch
  branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  if [ -n "${branch}" ]; then
    echo " current branch $(_blue "${branch}")"
  else
    echo
  fi
}

printf "\n%s on %s in %s%s" "${PS_USER}" "${PS_HOST}" "${PS_DIR}" "$(_git_prompt)"
