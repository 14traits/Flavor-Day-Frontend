FROM node:lts-alpine3.16
WORKDIR /src
COPY /package.json ./
RUN apk update && apk upgrade --available && sync
RUN ls -l
RUN npm install
COPY . .
RUN npm run build
# COPY ./src .
EXPOSE 8080
CMD [ "npm", "run" "serve" ]
