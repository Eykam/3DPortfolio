FROM node:latest

WORKDIR /app

COPY ./package.json ./package.json
COPY ./yarn.lock ./yarn.lock

RUN yarn yarn global add yarn
RUN yarn install

COPY ./dist ./dist
COPY ./index.js ./index.js

CMD ["node", "index.js"]