#!/bin/zsh

tmux rename-window -t 1 'tasks'
tmux send-keys -t 1 'cd $HOME/Documents/PersonalDocumentation' C-m
tmux send-keys -t 1 'vi tasks' C-m
tmux send-keys -t 1 'G'

tmux new-window -t 2 -n 'server'
tmux send-keys -t 2 'cd $rs_root' C-m
tmux send-keys -t 2 'mvn-keep' C-m

tmux new-window -t 3 -n "npm"
tmux send-keys -t 3 'cd $rs_ui' C-m
tmux send-keys -t 3 'npm-ding' # have to wait until server is running before starting

tmux new-window -t 4 -n "git"
tmux send-keys -t 4 'cd $rs_root' C-m
tmux send-keys -t 4 'gb' C-m
tmux send-keys -t 4 'git status' C-m

tmux new-window -t 5 -n "dev"
tmux send-keys -t 5 'cd $rs_ui/src' C-m
tmux send-keys -t 5 'vi' C-m
