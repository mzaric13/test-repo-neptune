#!/bin/sh
until psql -h "second-instance-db" -U "postgres" -W "postgres" -d "planet9" -c '\dn' | grep -q "planet9"; do
  echo "Waiting for schema 'planet9' to be created..."
  sleep 2
done
echo "Schema 'planet9' is ready!"