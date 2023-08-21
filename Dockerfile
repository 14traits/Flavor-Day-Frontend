# build stage
FROM node:17 as build-stage
WORKDIR /app
COPY package*.json ./
#RUN apk update && apk upgrade --available && sync
#RUN ls -l
RUN npm install
COPY . .
RUN npm run build


# production stage
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]



# build stage
# FROM node:lts-alpine 
# #as build-stage
# WORKDIR /src
# COPY /package.json ./
# RUN apk update && apk upgrade --available && sync
# RUN ls -l
# RUN npm install
# RUN npm run build
# COPY /dist /app
# CMD ["npm", "run", "serve"]

# # produciton stage
# #FROM nginx:stable-alpine as production-stage
# #COPY --from=build-stage /app/dist /usr/share/nginx/html
# #EXPOSE 8080
# #CMD [ "nginx", "-g", "daemon off;" ]
