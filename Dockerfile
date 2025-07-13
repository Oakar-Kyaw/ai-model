# Use latest Ubuntu as base
FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies: curl, ca-certificates, and other essentials
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama via official install script
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama API port
EXPOSE 11434

# Create volume directory for Ollama models
VOLUME /root/.ollama

# Pull the Llama model on container start and serve Ollama
CMD ollama serve & \
    sleep 10 && \
    ollama pull llama3.2 && \
    tail -f /dev/null
