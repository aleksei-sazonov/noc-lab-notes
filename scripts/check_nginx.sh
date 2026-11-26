#!/bin/bash
#скрипт для проверки nginx

LOG_FILE="/home/sa2/noc_lab/scripts/nginx_check.log"

if systemctl is-active --quiet nginx; then
    echo "$(date '+%Y-%n-%d %H:%M:%S') - Nginx is UP . OK." >> "$LOG_FILE"
else
    echo "$(date '+%Y-%n-%d %H:%M:%S') - Nginx is  DOWN! Restarting..." >> "$LOG_FILE"
    sudo systemctl restart nginx

    if systemctl is-active --quiet nginx; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - Nginx successfully restarted." >> "$LOG_FILE"
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') - CRITICAL: Failed to restart Nginx!" >> "$LOG_FILE"


    fi
fi
