# Utilisez l'image de base Python 3.9
FROM python:3.9

# Copiez le code source dans le conteneur
COPY OpenWeatherAPI.py .

# Installez les dépendances
RUN pip install requests

# Exécutez la commande pour lancer l'application
CMD ["python", "OpenWeatherAPI.py"]
