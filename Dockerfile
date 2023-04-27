# syntax=docker/dockerfile:1
FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y pip


# Copiez le code source dans le conteneur
COPY OpenWeatherAPI.py .

# Installez les dépendances
RUN pip install requests

# Exécutez la commande pour lancer l'application
CMD ["python", "OpenWeatherAPI.py"]
