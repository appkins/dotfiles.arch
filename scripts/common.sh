#!/bin/sh -

function _assert_user() {
    if [[ "$HOME" == "/root" ]]; then
        echo "Cannot be run as root. This will likely cause problems with your system."
        exit 1
    fi
}

function _assert_directory {
    if [[ -e "$1" ]]; then
        echo "$1 must be a directory"
    else
        echo "$1 does not exist"
    fi
}

function _assert_not_directory {
    if [[ ! -e "$1" ]]; then
        echo "$1 must not be a directory"
    else
        echo "$1 does not exist"
    fi
}

function _debug_echo {
    if [[ "$DEBUG" == "true" ]]; then
        echo "$1"
    fi
}

function _verbose_echo {
    if [[ "$VERBOSE" == "true" ]]; then
        echo "$1"
    fi
}

function _list_subdirs {
    cd $1 && ls -d */ && cd ../..
}

function _parse_args {
    export targets=("$@")
    while test $# -gt 0
    do
        case "$1" in
            -d) export DEBUG="true"
                ;;
            --debug) export DEBUG="true"
                ;;
            -a) export ALL="true"
                ;;
            -v) export VERBOSE="true"
                ;;
            -r) export REPLACE="true"
                ;;
            -*) echo "bad option $1"
                ;;
            *) echo "installing $1"
                ;;
        esac
        shift
    done

    if [[ ${#targets[@]} -eq 0 && "$ALL" != "true" ]]; then
        echo "Invalid args: must pass name of target or -all"
        exit 1
    fi
}