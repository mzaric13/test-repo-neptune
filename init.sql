-- -- Function to create database if it does not exist
-- DO $$
-- BEGIN
--     IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'first-database') THEN
--         EXECUTE 'CREATE DATABASE "first-database"';
--     END IF;
-- END $$;

-- -- Connect to the first-database
-- \connect "first-database";

-- -- Create the planet9 schema if it does not exist
-- CREATE SCHEMA IF NOT EXISTS planet9;

-- -- Function to create second database if it does not exist
-- DO $$
-- BEGIN
--     IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'second-database') THEN
--         EXECUTE 'CREATE DATABASE "second-database"';
--     END IF;
-- END $$;

-- -- Connect to the second-database
-- \connect "second-database";

-- -- Create the planet9 schema if it does not exist
-- CREATE SCHEMA IF NOT EXISTS planet9;

-- -- Function to create third database if it does not exist
-- DO $$
-- BEGIN
--     IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'third-database') THEN
--         EXECUTE 'CREATE DATABASE "third-database"';
--     END IF;
-- END $$;

-- -- Connect to the third-database
-- \connect "third-database";

-- -- Create the planet9 schema if it does not exist
-- CREATE SCHEMA IF NOT EXISTS planet9;

DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'first-database') THEN
        EXECUTE 'CREATE DATABASE "first-database"';
    END IF;
END $$;

-- Create the planet9 schema in first-database if it does not exist
\connect "first-database";
CREATE SCHEMA IF NOT EXISTS planet9;

-- Create the second-database if it does not exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'second-database') THEN
        EXECUTE 'CREATE DATABASE "second-database"';
    END IF;
END $$;

-- Create the planet9 schema in second-database if it does not exist
\connect "second-database";
CREATE SCHEMA IF NOT EXISTS planet9;

-- Create the third-database if it does not exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_database WHERE datname = 'third-database') THEN
        EXECUTE 'CREATE DATABASE "third-database"';
    END IF;
END $$;

-- Create the planet9 schema in third-database if it does not exist
\connect "third-database";
CREATE SCHEMA IF NOT EXISTS planet9;
