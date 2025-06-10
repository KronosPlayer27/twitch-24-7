#!/bin/sh

ffmpeg -loglevel quiet -re -stream_loop -1 -i video.mp4 \
  -vf scale=854:480 \
  -c:v libx264 -preset superfast -b:v 1000k \
  -c:a aac -b:a 128k -f flv \
  rtmp://live.twitch.tv/app/$KEY
