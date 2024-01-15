FROM node:latest

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install -g npm
RUN npm install


COPY ./dist ./dist
COPY ./index.js ./index.js


CMD ["node", "index.js"]