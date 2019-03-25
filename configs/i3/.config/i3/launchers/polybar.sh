#!/usr/bin/env bash

function start_session {
    # kill running bars
    [[ $(pidof polybar) ]] && pkill polybar
    polybar --reload --config="${HOME}/.config/polybar/config" i3-bar &
}

start_session

exit 0