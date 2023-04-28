FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -yq && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

ENV API_KEY='73be3cf6a28318fcb773a20a6681ae68'
COPY OpenWeatherAPI.py .

RUN pip3 install --no-cache-dir requests &&\
    pip3 install flask

CMD ["python3", "OpenWeatherAPI.py"]