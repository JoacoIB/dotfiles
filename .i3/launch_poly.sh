killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar right &

polybar left &

echo "Bars launched..."
