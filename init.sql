DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_namespace WHERE nspname = 'planet9') THEN
        CREATE SCHEMA "planet9";
    END IF;
END $$;