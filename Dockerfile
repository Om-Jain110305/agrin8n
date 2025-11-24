FROM n8nio/n8n:latest

# Accept build-time arguments
ARG USERNAME
ARG PASSWORD

# Pass authentication settings
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=${USERNAME}
ENV N8N_BASIC_AUTH_PASSWORD=${PASSWORD}

# Optional (no harm, but not required for basic deployment)
ENV ENABLE_ALPINE_PRIVATE_NETWORKING=true

# Fix for permissions warning (optional but recommended)
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Start n8n
CMD ["n8n"]
