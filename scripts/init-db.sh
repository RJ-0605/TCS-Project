#!/bin/bash
# Initialize the database
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < config/db-schema.sql
