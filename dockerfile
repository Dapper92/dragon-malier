# the base image for the container which is a Nodejs runtime

FROM node:alpine

#the working directory

WORKDIR /drag-mail/storage

#copying the packagej.son ./

COPY package*.json ./

#install the dependencies

RUN  npm install

#copying the rest of the file

COPY . .

#EXPOSING THE PORT

EXPOSE 3400

#starting the server

CMD ["npm","run", "start"]