#!/bin/bash

export PGPASSWORD="postgres"

# Function to check if the specified database exists
check_database_exists() {
  psql -h "$1" -U "postgres" -t -c "SELECT 1 FROM pg_database WHERE datname = '$2';" | grep -q 1
}

# Function to check if the 'planet9' schema exists in the specified database
check_schema_exists() {
  psql -h "$1" -U "postgres" -d "$2" -t -c "SELECT 1 FROM pg_namespace WHERE nspname = 'planet9';" | grep -q 1
}

# List of databases to check
databases=("first-database" "second-database" "third-database")

# Check if each database and its schema exist
for db in "${databases[@]}"; do
  # Wait for the database to be created
  until check_database_exists "postgres-db" "$db"; do
    echo "Waiting for database '$db' to be created..."
    sleep 2
  done
  echo "Database '$db' is ready!"

  # Wait for the schema 'planet9' to be created in the database
  until check_schema_exists "postgres-db" "$db"; do
    echo "Waiting for schema 'planet9' in database '$db' to be created..."
    sleep 2
  done
  echo "Schema 'planet9' in database '$db' is ready!"
done