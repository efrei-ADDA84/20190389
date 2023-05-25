# OpenWeather API
This project is a Python application that retrieves weather information using the OpenWeather API based on latitude, longitude, and API key provided as environment variables.

## Usage
To retrieve weather information, set the environment variables LAT et LONG in your command.  Replace `<latitude>` and `<longitude>` with your values.

The command to run the Docker container is as follows:

```curl "http://devops-20190389.westeurope.azurecontainer.io:8081/?lat=5.902785&lon=102.754175"```

## Dependencies
This project uses the following dependencies:
__requests__
These dependencies are installed automatically when building the Docker image.

## Dockerfile
Our Dockerfile is based on the latest Ubuntu image and installs Python 3 and pip. <br> It then copies the OpenWeatherAPI.py file into the container and installs the requests library using pip. Finally, it sets the default command to run the OpenWeatherAPI.py file using Python 3.

## Credits
This project was created by ArnaudCP8.
