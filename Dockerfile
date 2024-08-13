FROM mysql:latest

ENV MYSQL_DATABASE=tcs_db
ENV MYSQL_USER=tcs_user
ENV MYSQL_PASSWORD=securepassword
ENV MYSQL_ROOT_PASSWORD=rootpassword

COPY config/db-schema.sql /docker-entrypoint-initdb.d/
