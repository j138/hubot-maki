FROM node:7.2.1-slim

RUN mkdir /opt/hubot
WORKDIR /opt/hubot

RUN npm install -g hubot coffee-script

COPY package.json /opt/hubot
RUN npm install && npm cache clean
COPY . /opt/hubot

COPY external-scripts.json /opt/hubot/external-scripts.json

CMD ["./bin/hubot", "--adapter", "slack"]
