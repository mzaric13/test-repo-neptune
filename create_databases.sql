-- Create first-database if it does not exist
SELECT 'CREATE DATABASE "first-database"' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'first-database')
\gexec;

-- Create second-database if it does not exist
SELECT 'CREATE DATABASE "second-database"' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'second-database')
\gexec;

-- Create third-database if it does not exist
SELECT 'CREATE DATABASE "third-database"' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'third-database')
\gexec;