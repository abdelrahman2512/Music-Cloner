FROM nikolaik/python-nodejs:python3.10-nodejs18
RUN apt-get update && apt-get upgrade -y
RUN apt-get install ffmpeg -y
COPY . /app/
WORKDIR /app/
RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt
CMD bash start
