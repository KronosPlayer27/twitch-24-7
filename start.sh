#!/bin/bash

# Transmitir vídeo em loop para a Twitch
ffmpeg -re -stream_loop -1 -i video.mp4 \
  -c:v libx264 -preset veryfast -b:v 2500k \
  -c:a aac -b:a 160k -f flv \
  rtmp://live.twitch.tv/app/$KEY
