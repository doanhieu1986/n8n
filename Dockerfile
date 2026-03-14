FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Cài đặt Python3 và các công cụ build cần thiết cho MoviePy
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt các thư viện Python cho dự án video của bạn
RUN pip3 install --break-system-packages gTTS edge-tts moviepy

USER node