#define from what image we want to build from (define from what image we want to build from)
FROM node:10

#create a directory to hold the application code
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN npm install

#bundle your app's source code inside the Docker image
COPY . /app

 #app binds to port 80
 EXPOSE 80

 #define the command to run your app
CMD ["node", "src/index.js"]