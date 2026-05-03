#!/bin/bash
# tmux-ai-monitor.sh — 3-pane AI hardware monitor
#
# Launches a tmux session with three panes:
#   Top:          nvidia-smi (GPU performance, VRAM, wattage)
#   Bottom-left:  htop (CPU and RAM load)
#   Bottom-right: ollama ps (models currently loaded in VRAM)
#
# Install:
#   cp tmux-ai-monitor.sh ~/bin/tmux-ai-monitor.sh
#   chmod +x ~/bin/tmux-ai-monitor.sh
#
# Optional alias — add to ~/.bashrc:
#   alias overwatch='bash ~/bin/tmux-ai-monitor.sh'
#
# Note: script uses 'docker exec ollama ollama ps' because Ollama runs
# in Docker on this system. If running Ollama natively, replace with:
#   watch -n 1 ollama ps

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
tmux send-keys 'watch -n 1 docker exec ollama ollama ps' $'\n'
tmux attach -t monitor
