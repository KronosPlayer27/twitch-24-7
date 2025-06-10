import requests
import os

# VARIÁVEIS DO AMBIENTE
CLIENT_ID = os.getenv("TWITCH_CLIENT_ID")
ACCESS_TOKEN = os.getenv("TWITCH_ACCESS_TOKEN")
BROADCASTER_ID = os.getenv("TWITCH_USER_ID")

headers = {
    'Client-ID': CLIENT_ID,
    'Authorization': f'Bearer {ACCESS_TOKEN}',
    'Content-Type': 'application/json'
}

data = {
    "title": "Live FARM 24/7,
    "game_id": "509658"  # Just Chatting
}

response = requests.patch(
    f'https://api.twitch.tv/helix/channels?broadcaster_id={BROADCASTER_ID}',
    headers=headers,
    json=data
)

print("Título atualizado:", response.status_code, response.text)
