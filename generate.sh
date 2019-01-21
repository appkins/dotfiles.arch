#!/bin/sh -

. scripts/theme.sh

templates=(\
    colors/.colorscheme.tpl \
    colors/.colorscheme.h.tpl \
    )

for template in ${templates[@]}; do
    echo "Template ${template}"
    _apply_theme "${template}"
done