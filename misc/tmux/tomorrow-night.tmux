set-option -g status-position top
set -g status "on"

set -g status-bg "colour219"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-left-attr "none"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g status-attr "none"
set -g status-utf8 "on"

set -g pane-active-border-fg "colour194"
set -g pane-active-border-bg "colour0"
set -g pane-border-fg "colour244"
set -g pane-border-bg "colour0"

set -g message-fg "colour21"
set -g message-bg "colour19"
set -g message-command-fg "colour255"
set -g message-command-bg "colour19"

setw -g window-status-fg "colour54"
setw -g window-status-bg "colour225"
setw -g window-status-attr "none"
setw -g window-status-separator ""
setw -g window-status-format "#[fg=colour231,bg=colour126]  #I  #[bg=colour90]  #W  "
setw -g window-status-current-format " #[fg=colour231,bg=colour201]  #I  #[bg=colour129]  #W  #[bg=default] "

setw -g window-status-activity-bg "colour18"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour2"

set -g status-left "#[fg=colour231,bg=colour161]  tmux  #[fg=default,bg=default]    "
set -g status-right "#[fg=colour242,bg=colour226] %Y-%m-%d %H:%M #[fg=colour240,bg=colour220] #(echo $USER)@#h #S:#I:#P "
