# Use the official NVIDIA CUDA base image with Ubuntu
FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04

# Set the working directory
WORKDIR /workspace

# Install dependencies for building Python from source
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    vim \
    git \
    curl \
    wget \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libgdbm-dev \
    libdb5.3-dev \
    libbz2-dev \
    libexpat1-dev \
    liblzma-dev \
    tk-dev \
    libffi-dev \
    libgdbm-compat-dev \
    libxmlsec1-dev \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*

# Download and install Python 3.12
RUN wget https://www.python.org/ftp/python/3.12.0/Python-3.12.3.tgz && \
    tar -xvf Python-3.12.3.tgz && \
    cd Python-3.12.3 && \
    ./configure --enable-optimizations && \
    make -j$(nproc) && \
    make altinstall && \
    cd .. && \
    rm -rf Python-3.12.3 Python-3.12.3.tgz

# Ensure pip is up-to-date
RUN python3.12 -m ensurepip && \
    python3.12 -m pip install --upgrade pip

# Copy requirements.txt into the image
COPY requirements.txt .

# Install Python packages from requirements.txt
RUN python3.12 -m pip install --no-cache-dir -r requirements.txt

# Copy all project source code into the image
COPY . /workspace

# Set environment variables
ENV APP_ENV=production
ENV APP_DEBUG=false

# Health check
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost:8000/health || exit 1

# Set the entrypoint to your application
# ENTRYPOINT ["python3.12", "/workspace/main.py"]