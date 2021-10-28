#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown &
polybar secondary 2>&1 | tee -a /tmp/polybar2.log & disown &

echo "Polybar launched..."
