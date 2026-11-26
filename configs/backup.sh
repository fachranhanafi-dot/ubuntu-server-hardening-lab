#!/bin/bash
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
tar -czf "$HOME/backups/backup-$TIMESTAMP.tar.gz" "$HOME/webapp" /etc/nginx/sites-available/default 2>/dev/null
find "$HOME/backups" -type f -name "*.tar.gz" -mtime +7 -delete
