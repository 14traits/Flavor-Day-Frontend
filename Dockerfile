# build stage
FROM node:lts-alpine 
#as build-stage
WORKDIR /src
COPY /package.json ./
RUN apk update && apk upgrade --available && sync
RUN ls -l
RUN npm install
COPY . .
EXPOSE 8080
RUN npm run build

# produciton stage
#FROM nginx:stable-alpine as production-stage
#COPY --from=build-stage /app/dist /usr/share/nginx/html
#EXPOSE 8080
#CMD [ "nginx", "-g", "daemon off;" ]
