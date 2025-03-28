# Use a lightweight base image
FROM alpine:3.14

# Install dependencies
RUN apk add --no-cache \
    cowsay \
    fortune \
    netcat-openbsd \
    bash

# Copy the application script
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Create a non-root user
RUN adduser -D wisecow
USER wisecow

# Expose the port
EXPOSE 4499

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/wisecow.sh"]