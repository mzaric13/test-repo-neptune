#!/bin/sh

export PGPASSWORD="postgres"

until psql -h "first-instance-db" -U "postgres" -d "planet9" -c '\dn' | grep -q "planet9"; do
  echo "Waiting for schema 'planet9' to be created..."
  sleep 2
done
echo "Schema 'planet9' is ready!"