tmux new-session -d -s "Velocity"
tmux split-window -h
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 2
tmux split-window -v
tmux send-keys -t 0 "cd velocity; ./main.sh" C-m
tmux send-keys -t 1 "cd hub; ./main.sh" C-m
tmux send-keys -t 2 "cd limbo; ./main.sh" C-m
tmux send-keys -t 3 "cd survival; ./main.sh" C-m
tmux set mouse on
tmux a