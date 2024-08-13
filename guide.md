
# Setup Guide for TCS-Project

## Overview

This guide provides step-by-step instructions for setting up the TCS-Project. The setup process involves configuring the environment, initializing the database, and running the project. This guide is designed to help users, including those in remote or low-technical expertise areas, to successfully deploy and manage the system.

## Prerequisites

Before starting, ensure you have the following installed:

* **Docker & Docker Compose** : For containerized deployment.
* **PostgreSQL or MySQL** : Depending on your database choice.
* **Shell Access** : To execute the provided shell scripts.
* **Git** : To clone the project repository.

## Step 1: Clone the Repository

First, clone the project repository to your local machine:

`git clone https://github.com/yourusername/TCS-Project.git 
cd TCS-Project `


## Step 2: Configure the Environment

### 2.1. Set Up Database Configuration

Edit the `config/database-config.yaml` file to match your database settings. This file contains essential database connection details.


### 2.2. Choose Environment Configuration

The project supports multiple environments (e.g., production and development). Choose your environment by selecting the appropriate `.env` file in `config/env/`.

* For production, use: `config/env/production.env`
* For development, use: `config/env/development.env`

## Step 3: Initialize the Database

Navigate to the `scripts/` directory and run the database initialization script. This script sets up the database schema and seed data.

`cd scripts/`

` ./init-db-mysql.sh `

## Step 4: Start the Application

Using Docker Compose, start the application services:

`docker-compose up -d`

This command will start the database service, web service, and any other services defined in the `docker-compose.yml` file.

## Step 5: Access the Application

Once the application is up and running, you can access it via a web browser. Navigate to `http://localhost:your_port`, where `your_port` is defined in the `docker-compose.yml` file.

## Step 6: Maintenance and Updates

### Database Backup

Use the `backup-db.sh` script to create a backup of the database:

### Database Migration

When updating the database schema, use the `migrate-db.sh` script:
