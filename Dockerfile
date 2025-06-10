FROM jrottenberg/ffmpeg:4.4-alpine

WORKDIR /app
COPY . .

# Instala Python e dependências
RUN apk add --no-cache python3 py3-pip && pip3 install requests

# Dá permissão ao script
RUN chmod +x start.sh

CMD ["sh", "start.sh"]
