#!/bin/sh

tmux rename-window "CORE"
tmux send-keys 'cd ~/Work/moneyflow-core' C-m;
tmux send-keys 'source .venv/bin/activate' C-m;
tmux send-keys 'docker-compose ps' C-m;
tmux split-window -v
tmux send-keys 'cd ~/Work/moneyflow-core' C-m;
tmux send-keys 'source .venv/bin/activate' C-m;

tmux new-window 
tmux rename-window "EMU"
tmux send-keys 'cd ~/Work/moneyflow-emu' C-m;
tmux send-keys 'source .venv/bin/activate' C-m;
tmux send-keys 'docker-compose ps' C-m;
tmux split-window -v
tmux send-keys 'cd ~/Work/moneyflow-emu' C-m;
tmux send-keys 'source .venv/bin/activate' C-m;

tmux new-window 
tmux send-keys 'cd ~' C-m;
tmux send-keys 'kubectl get pods -n prod' C-m;

