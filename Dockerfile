FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Cài đặt Python3 và các công cụ build cần thiết cho MoviePy
RUN apk add --update --no-cache python3 py3-pip build-base python3-dev

# Cài đặt các thư viện Python cho dự án video của bạn
RUN pip install --break-system-packages gTTS edge-tts moviepy

USER node