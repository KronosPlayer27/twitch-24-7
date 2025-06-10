FROM ubuntu:22.04

RUN apt update && apt install -y ffmpeg

COPY . /app
WORKDIR /app

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
