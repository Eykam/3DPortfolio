FROM node:latest

WORKDIR /app

COPY ./package.json ./package.json


RUN npm install -g npm
RUN npm install


COPY ./dist ./dist
COPY ./index.js ./index.js


CMD ["node", "index.js"]