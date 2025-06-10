#!/bin/sh

# Atualiza o título da live automaticamente
python3 update_title.py

# Roda o vídeo em loop (480p, silencioso, otimizado)
ffmpeg -loglevel quiet -re -stream_loop -1 -i video.mp4 \
  -vf scale=854:480 \
  -c:v libx264 -preset ultrafast -b:v 800k \
  -c:a aac -b:a 128k -f flv \
  rtmp://live.twitch.tv/app/$KEY
