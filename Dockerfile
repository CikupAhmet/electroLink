# Install the app dependencies in a full Node docker image
FROM node:14

WORKDIR /src
#COPY package*.json ./
COPY ["factory-ui/package*.json", "./"]

RUN npm install
CMD npm run serve
EXPOSE 3000