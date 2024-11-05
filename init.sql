DO $$
BEGIN
   -- Check if the database "planet9" exists
   IF NOT EXISTS (
      SELECT 1 
      FROM pg_database 
      WHERE datname = 'planet9'
   ) THEN
      -- Create the database if it doesn't exist
      PERFORM dblink_exec('dbname=postgres', 'CREATE DATABASE "planet9";');
   END IF;

   -- Connect to the newly created database
   EXECUTE 'SET search_path TO "planet9";';

   -- Create the schema "planet9" if it doesn't exist
   IF NOT EXISTS (SELECT 1 FROM pg_namespace WHERE nspname = 'planet9') THEN
      CREATE SCHEMA "planet9";
   END IF;

END $$;