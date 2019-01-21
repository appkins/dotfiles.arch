#!/bin/sh -
## Usage: install [options] DIR1 DIR2
##
## Options:
##   -d, --debug   Enables debugging output.
##   -a            Installs all dotfiles.
##   -v            Enables verbose output.
##   -r            Replaces all existing dotfiles (files/dirs will be backed up).
##

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/common.sh"

#targets=("$@")

function _unstow {
    src_dir=configs/$1
	stow -t ${HOME} -d ${src_dir} -D `_list_subdirs ${src_dir}`
}

_parse_args "$@"

if [ "$ALL" == "true" ]; then
    echo "Installing all dotfiles"
    echo "shell system"
    _unstow shell
    _unstow system
else
    _debug_echo "${targets[@]}"
    for target in ${targets[@]}; do
        _unstow "${target}"
    done
fi