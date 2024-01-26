#Stage 1
# choosing base image for build stage
FROM node:16-alpine as builder
# choosing working directory for the application
WORKDIR /app
#copying all the content from local to docker working directory
COPY . .
#Installing the build tool NPM package
RUN npm install
#Builing the application
RUN npm run build

#Stage 2
#second stage base image
FROM nginx:alpine
#setting Workdir for this base image 
WORKDIR /usr/share/nginx/html/
#copying first stage code to this stage
COPY --from=builder /app/build .
#exposing application in port no 80
EXPOSE 80
#executing the application after creating image
CMD ["nginx", "-g", "daemon off;"]



