FROM jrottenberg/ffmpeg:4.4-alpine

COPY . /app
WORKDIR /app

RUN chmod +x start.sh

CMD ["bash", "start.sh"]
