# Use the original n8n image as the basis
FROM n8nio/n8n:ai-beta

# Install additional packages as needed
USER root
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 curl ffmpeg
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools speedtest-cli 
USER node