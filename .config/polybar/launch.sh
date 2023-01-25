#!/bin/sh

echo "---" | tee -a /tmp/polyba1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Send the train!!!"
