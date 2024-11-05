#!/bin/sh

set -e

# Create the databases if they do not exist
psql -U postgres -d postgres -c "SELECT 'CREATE DATABASE \"first-database\"' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'first-database') \gexec"
psql -U postgres -d postgres -c "SELECT 'CREATE DATABASE \"second-database\"' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'second-database') \gexec"
psql -U postgres -d postgres -c "SELECT 'CREATE DATABASE \"third-database\"' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'third-database') \gexec"