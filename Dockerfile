# Use Python slim image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# System dependencies install
RUN apt-get update && apt-get install -y \
    ffmpeg \
    aria2 \
    wget \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . .

# Upgrade pip
RUN pip install --upgrade pip

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose port (for aiohttp web server)
EXPOSE 10000

# Run bot
CMD ["python3", "main.py"]
