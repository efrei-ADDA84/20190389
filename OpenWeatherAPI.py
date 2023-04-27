import os

import requests

def get_weather():
    lat = os.getenv('LAT')
    lon = os.getenv('LON')
    api_key = os.getenv('API_KEY')
    if (lat==None):
        print('You don\'t define lat long or api key')
        exit(1)
    url = "http://api.openweathermap.org/data/2.5/weather?"
    Final_url = url + "appid=" + api_key + "&lat=" + lat + "&lon=" + lon

    response = requests.get(Final_url)
    if response.status_code == 200:
        data = response.json()
        weather = data['weather'][0]['description']
        temp = data['main']['temp']
        return f'Le temps à la latitude {lat} et longitude {lon} est {weather} avec une température de {temp} degrés Celsius.'
    else:
        return 'Une erreur est survenue lors de la récupération des informations météorologiques.'

if __name__ == '__main__':
    print(get_weather())
