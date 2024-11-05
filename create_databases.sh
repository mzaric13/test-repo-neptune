#!/bin/sh

set -e

# Function to create a database if it does not exist
create_database() {
    db_name="$1"
    psql -U postgres -d postgres -tc "SELECT 1 FROM pg_database WHERE datname = '$db_name'" | grep -q 1 || psql -U postgres -d postgres -c "CREATE DATABASE \"$db_name\""
}

# Create databases
create_database "first-database"
create_database "second-database"
create_database "third-database"