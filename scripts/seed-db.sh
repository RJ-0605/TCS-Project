#!/bin/bash
# Seed the database with initial data
mysql -h $DB_HOST -u $DB_USER -p$DB_PASSWORD $DB_NAME < config/db-seed.sql
