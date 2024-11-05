# Dockerfile
FROM postgres:14.2-alpine

# Copy initialization script and health check script
COPY init.sql /docker-entrypoint-initdb.d/
COPY check-schema.sh /check-schema.sh

# Make health check script executable
RUN chmod +x /check-schema.sh

# Set the healthcheck to use the schema checking script
HEALTHCHECK --interval=10s --timeout=5s --retries=5 CMD /check-schema.sh || exit 1

# Start the postgres server
CMD ["docker-entrypoint.sh", "postgres"]