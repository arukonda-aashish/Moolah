# PostgreSQL Dockerfile with custom initialization
FROM postgres:15-alpine

# Install additional extensions if needed
RUN apk add --no-cache \
    postgresql-contrib \
    uuid-ossp

# Set locale
ENV LANG en_US.utf8

# Copy initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/01-init.sql
COPY scripts/ /docker-entrypoint-initdb.d/scripts/

# Copy custom PostgreSQL configuration
COPY postgresql.conf /etc/postgresql/postgresql.conf

# Set permissions
RUN chmod +x /docker-entrypoint-initdb.d/scripts/*

# Expose PostgreSQL port
EXPOSE 5432

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD pg_isready -U $POSTGRES_USER -d $POSTGRES_DB || exit 1