FROM node:alpine
COPY app /app
WORKDIR /app

COPY docker-entrypoint.sh /usr/local/bin/
entrypoint ["docker-entrypoint.sh"]
