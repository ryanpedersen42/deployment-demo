# specify base image
FROM node:13.12.0-alpine as build

# working directory that we'll be using
WORKDIR /app

# copy the least likely piece to be changed to utilize caching
COPY package*.json ./

# intall packages needed for app
RUN npm install

# copy the rest of the app
COPY . ./

# build your app
RUN npm run build

# multi-stage docker build
# production environment
FROM nginx:stable-alpine

# copy built app to nginx
COPY --from=build /app/build /usr/share/nginx/html

# note to expose port 80
EXPOSE 80

# start nginx server 
CMD ["nginx", "-g", "daemon off;"]