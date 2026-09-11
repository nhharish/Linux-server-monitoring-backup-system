 
#!/bin/bash

LOG="$HOME/linux/logs/system.log"

echo "===== system monitoring =====" >> "$LOG"
echo "DATE: $(date)" >> "$LOG"
echo "Hostname: $(hostname)" >> "$LOG"

echo "cpu load:" >> "$LOG"
uptime >> "$LOG"

echo "memory:" >> "$LOG"
free -h >> "$LOG"

echo "disk usage:" >> "$LOG"
df -h >> "$LOG"

echo "top processes:" >> "$LOG"
ps aux --sort=-%cpu | head -6 >> "$LOG"

echo " ===================" >> "$LOG"
