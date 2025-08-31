# Redis Dockerfile with custom configuration
FROM redis:7-alpine

# Create a non-root user for security
RUN addgroup -g 999 redis && adduser -D -s /bin/sh -u 999 -G redis redis

# Copy custom Redis configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Create data directory with proper permissions
RUN mkdir -p /data && chown redis:redis /data

# Set working directory
WORKDIR /data

# Switch to non-root user
USER redis

# Expose Redis port
EXPOSE 6379

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD redis-cli ping | grep PONG || exit 1

# Start Redis server with custom configuration
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]