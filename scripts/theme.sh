#!/bin/sh -

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
COLORS_DIR=$(echo "$(cd "$(dirname "$DIR/../colors/colorscheme.sh")"; pwd)")
. "$COLORS_DIR/colorscheme.sh"

function _apply_theme {
	TPL_FILE="$1"
	envsubst < "${TPL_FILE}" > "${TPL_FILE%.tpl}"
}