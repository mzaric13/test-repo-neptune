# Dockerfile
FROM postgres:14.2-alpine

# Copy initialization script and health check script
COPY init-schema.sql /docker-entrypoint-initdb.d/
COPY check-schema.sh /check-schema.sh

# Make health check script executable
RUN chmod +x /check-schema.sh