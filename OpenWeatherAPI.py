import os
import requests
from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def weather():
    lat = request.args.get("lat")
    lon = request.args.get("lon")
    api_key = os.environ.get('API_KEY')

    url = "http://api.openweathermap.org/data/2.5/weather?"
    final_url = url + "appid=" + api_key + "&lat=" + lat + "&lon=" + lon

    response = requests.get(final_url)

    if response.status_code == 200:
        data = response.json()
        if 'main' in data and 'temp' in data['main'] and 'weather' in data and len(data['weather']) > 0 and 'description' in data['weather'][0]:
            weather = data['weather'][0]['description']
            temp = data['main']['temp']
            return f'Le temps à la latitude {lat} et longitude {lon} est {weather} avec une température de {temp} degrés Celsius.'
        else:
            return 'Impossible de récupérer les informations météorologiques.'
    else:
        return 'Une erreur est survenue lors de la récupération des informations météorologiques.'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8081)
