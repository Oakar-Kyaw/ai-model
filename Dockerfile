FROM ollama/ollama:latest

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama, wait for it to initialize, then pull the Llama model
CMD ollama serve & sleep 5 && ollama pull llama2 && tail -f /dev/null
