@tpm_plugins "                \\\012    caiogondim/maglev                     \\\012    tmux-plugins/tpm                      \\\012    tmux-plugins/tmux-sensible            \\\012    tmux-plugins/tmux-resurrect           \\\012    tmux-plugins/tmux-continuum           \\\012    tmux-plugins/tmux-yank                \\\012    tmux-plugins/tmux-pain-control        \\\012    tmux-plugins/tmux-copycat             \\\012    tmux-plugins/tmux-open                \\\012    tmux-plugins/tmux-battery             \\\012    tmux-plugins/tmux-cpu                 \\\012    tmux-plugins/tmux-prefix-highlight    \\\012"
activity-action other
assume-paste-time 1
base-index 1
bell-action any
default-command ""
default-shell "/usr/bin/zsh"
destroy-unattached off
detach-on-destroy on
display-panes-active-colour red
display-panes-colour blue
display-panes-time 1000
display-time 750
history-limit 2000
key-table "root"
lock-after-time 0
lock-command "lock -np"
message-command-style fg=yellow,bg=black
message-style fg=black,bg=yellow
mouse off
prefix C-b
prefix2 None
renumber-windows off
repeat-time 0
set-titles off
set-titles-string "#S:#I:#W - \"#T\" #{session_alerts}"
silence-action other
status on
status-interval 15
status-justify left
status-keys vi
status-left "[#S] "
status-left-length 10
status-left-style default
status-position top
status-right " \"#{=21:pane_title}\" %H:%M %d-%b-%y"
status-right-length 40
status-right-style default
status-style fg=black,bg=green
update-environment[0] "DISPLAY"
update-environment[1] "KRB5CCNAME"
update-environment[2] "SSH_ASKPASS"
update-environment[3] "SSH_AUTH_SOCK"
update-environment[4] "SSH_AGENT_PID"
update-environment[5] "SSH_CONNECTION"
update-environment[6] "WINDOWID"
update-environment[7] "XAUTHORITY"
visual-activity off
visual-bell off
visual-silence off
word-separators " -_@"
