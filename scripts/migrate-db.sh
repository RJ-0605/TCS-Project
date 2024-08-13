#!/bin/bash
# Migrate the database
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < config/db-migrations.sql
