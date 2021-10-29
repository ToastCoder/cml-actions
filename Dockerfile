# Base Image
FROM ubuntu:latest

# Installing Required Packages
RUN apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq

# File Setup
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Docker Execution
ENTRYPOINT ["/entrypoint.sh"]
