FROM node:lts-alpine3.16
WORKDIR /src
COPY /package.json ./
RUN apk update && apk upgrade --available && sync
RUN ls -l
RUN npm install
COPY . .
RUN npm run build
COPY ./nodeServer.js dist/nodeServer.js
WORKDIR /usr/src/app/dist
EXPOSE 8080
CMD [ "node", "nodeServer.js" ]
