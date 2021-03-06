# Base Image

FROM node:alpine

WORKDIR /usr/app

#install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]