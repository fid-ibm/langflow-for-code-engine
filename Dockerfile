# Use a slim Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install Langflow (and optionally pin to version)
RUN pip install --no-cache-dir langflow

# Expose default UI port
EXPOSE 7860

# Set environment variable to ensure UI mode (actually default, so optional)
ENV LANGFLOW_BACKEND_ONLY=false

# Optionally copy your custom flow definitions (if you want to preload)
# COPY your_flows/ /app/flows/

# Run Langflow on container start
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]
