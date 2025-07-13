# Use Ollama's official base image
FROM ollama/ollama:latest

# Expose Ollama's default port
EXPOSE 11434

# Start Ollama on container start
CMD ["ollama", "serve"]
