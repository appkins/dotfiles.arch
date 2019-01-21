#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

HELP_FILE="${DIR}/help/repo.txt"

function _try_add_repo {
    REPO_NAME="$1"
    REPO_NAME="[${REPO_NAME}-current]"
    REPO_PATH="$2"

    if [[ -z "${REPO_NAME}" ]]; then echo "repository name must not be empty." && cat ${HELP_FILE} && exit 0; fi
    if [[ -z "${REPO_PATH}" ]]; then echo "repository path must not be empty." && cat ${HELP_FILE} && exit 0; fi
  
    if cat /etc/pacman.conf |
        grep -xqFe "${REPO_NAME}"
    then
        # Found
        printf '\nrepo entry already exists for package:\nname:\t%s\nsource:\thttps://github.com/%s/download/current/\n' "${REPO_NAME}" "${REPO_PATH}"
    else
        # Not Found
        sudo printf '\n\n%s\nServer = https://github.com/%s/releases/download/current/\nSigLevel = PackageOptional' "${REPO_NAME}" "${REPO_PATH}" >> /etc/pacman.conf
    fi
}

###
# only run if args are passed
###
if [[ ! $# -eq 0 ]] ; then
    _try_add_repo $1 $2
fi