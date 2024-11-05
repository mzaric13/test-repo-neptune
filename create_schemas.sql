-- Connect to first-database and create the schema
\connect "first-database";
CREATE SCHEMA IF NOT EXISTS planet9;

-- Connect to second-database and create the schema
\connect "second-database";
CREATE SCHEMA IF NOT EXISTS planet9;

-- Connect to third-database and create the schema
\connect "third-database";
CREATE SCHEMA IF NOT EXISTS planet9;