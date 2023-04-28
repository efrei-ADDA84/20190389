FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

COPY OpenWeatherAPI.py .

RUN pip3 install --no-cache-dir requests &&\
    pip3 install flask

EXPOSE 5000
CMD ["python3", "OpenWeatherAPI.py"]