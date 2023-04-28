# OpenWeather API
This project is a Python application that retrieves weather information using the OpenWeather API based on latitude, longitude, and API key provided as environment variables.

## Getting Started
To run this application, you need to have Docker installed on your computer. Once you have Docker installed, you can follow these steps:

* Clone the repository: 
  `git clone https://github.com/arnaudcp/openweather.git` <br>
* Navigate to the project directory: `cd openweather` <br>
* Build the Docker image: `docker build -t arnaudcp/openweather:1.6 .`<br>
* Run the Docker container with the environment variables set: `docker run --env LAT='<latitude>' --env LONG='<longitude>' --env API_KEY='<api_key>' arnaudcp/openweather:1.6`

## Usage
To retrieve weather information, set the environment variables LAT, LONG, and API_KEY in the Docker command.  Replace `<latitude>`, `<longitude>`, and <api_key> with your values.

The command to run the Docker container is as follows:

```docker run --env LAT='<latitude>' --env LONG='<longitude>' --env API_KEY='<api_key>' arnaudcp/openweather:1.6```

## Dependencies
This project uses the following dependencies:
__requests__
These dependencies are installed automatically when building the Docker image.

## Dockerfile
Our Dockerfile is based on the latest Ubuntu image and installs Python 3 and pip. <br> It then copies the OpenWeatherAPI.py file into the container and installs the requests library using pip. Finally, it sets the default command to run the OpenWeatherAPI.py file using Python 3.

## Credits
This project was created by ArnaudCP8.
