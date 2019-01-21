

#POWERLEVEL9K_MODE='nerdfont-complete'

## Replace full user in the terminal context with an icon
##
local user_symbol="\uF007 $"

if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "\uF007 #"
fi
POWERLEVEL9K_CONTEXT_TEMPLATE=$user_symbol

##  My Power Level 9K config
##
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir context rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator dir_writable time)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_from_right
POWERLEVEL9K_SHORTEN_DELIMITER=..
POWERLEVEL9K_HIDE_BRANCH_ICON=false
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=false
POWERLEVEL9K_VCS_HIDE_TAGS=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_VCS_GIT_ICON=''
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M} \uF017 '

POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true

## My Power Level 9K colors
##
#POWERLEVEL9K_COLOR_SCHEME=light

POWERLEVEL9K_DIR_HOME_BACKGROUND=red
POWERLEVEL9K_DIR_HOME_FOREGROUND=grey0
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=red
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=grey0
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=yellow
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=grey0
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=red
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=grey0

POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=magenta
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=grey0

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=yellow
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=grey0
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=yellow
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=grey0
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=yellow
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=grey0

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=red
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=grey0

POWERLEVEL9K_STATUS_OK_BACKGROUND=blue
POWERLEVEL9K_STATUS_OK_FOREGROUND=grey0
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=yellow
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=grey0

POWERLEVEL9K_TIME_BACKGROUND=cyan
POWERLEVEL9K_TIME_FOREGROUND=grey0