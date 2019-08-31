# base image
FROM node:latest

# setting the work direcotry
WORKDIR /usr/src/app

# copy package.json
COPY ./package.json .

# install dependencies
RUN npm install

# COPY index.js
COPY ./index.js .

RUN node -v

CMD ['node','index.js']