FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install required tools
RUN apt-get update && \
    apt-get install -y \
      curl \
      gnupg \
      ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Add Antigravity repository
RUN mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://us-central1-apt.pkg.dev/doc/repo-signing-key.gpg | \
      gpg --dearmor --yes -o /etc/apt/keyrings/antigravity-repo-key.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/antigravity-repo-key.gpg] https://us-central1-apt.pkg.dev/projects/antigravity-auto-updater-dev/ antigravity-debian main" \
      > /etc/apt/sources.list.d/antigravity.list

# Update and try to install antigravity
RUN apt-get update && \
    apt-get install -y antigravity || true
    # ^ allow build to continue even if install fails

# Render does not use systemd; keep container alive
CMD ["bash"]

