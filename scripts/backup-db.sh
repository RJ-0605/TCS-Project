#!/bin/bash
# Backup the database
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME > backup/$(date +%Y%m%d)_tcs_db_backup.sql
