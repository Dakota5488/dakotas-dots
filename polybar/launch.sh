#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch floating
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar floating 2>&1 | tee -a /tmp/polybar1.log & disown
polybar floating2 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
