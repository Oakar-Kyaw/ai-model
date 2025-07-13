# Use Ollama's official base image
FROM ollama/ollama:latest

# Automatically pull the LLaMA model (e.g., llama2)
RUN ollama pull llama2

# Expose Ollama's default port
EXPOSE 11434

# Start Ollama on container start
CMD ["ollama", "serve"]
