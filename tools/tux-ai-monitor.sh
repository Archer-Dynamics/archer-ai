#!/bin/bash
tmux kill-session -t monitor 2>/dev/null
tmux new-session -d -s monitor
sleep 0.3
tmux split-window -v
sleep 0.3
tmux select-pane -t 1
tmux split-window -h
sleep 0.3
tmux select-pane -t 0
tmux send-keys 'watch -n 1 nvidia-smi' $'\n'
sleep 0.3
tmux select-pane -t 1
tmux send-keys 'htop' $'\n'
sleep 0.3
tmux select-pane -t 2
tmux send-keys 'watch -n 1 docker exec ollama ollama ps' $'\n'     # I run ollama in Docker, so if you run it natively this would be 'watch -n 1 ollama ps' $'\n' 
tmux attach -t monitor

# For testing my models and monitoring hardware performance I use this 3-pane bash script to show me in Terminal how my models and GPU, CPU and RAM are doing
# upper portion is nvisi-smi shoving detailed GPU performance
# left lower portion is htop, showing CPU and RAM load
# right lower portion is ollama, showing me which models are currently loaded into VRAM
# I use tmux to combine these three sections into a single window
# The sleep had to be added, because tmux will fail to refresh without them and not load the other parts of the 3 scripts
#
# the above sh script should be stored in ~/bin/tmux-ai-monitor.sh and be made executable via chmod -x
# instead of writing the long path to run it I've created an alias called "overwatch" - whenever I type it this script launches
#
# If you want this alias, add this to your .bashrc:
# # overwatch - is a short command to launch the tmux script for AI monitoring
# alias overwatch='bash ~/bin/tmux-ai-monitor.sh'
