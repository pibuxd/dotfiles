killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar mainbar >>/tmp/polybar1.log 2>&1 & disown

echo "Bar launched..."
