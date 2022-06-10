FROM node:16-alpine

LABEL version=1.0
LABEL maintainer='Rajab Nabih'

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node", "app.js"]