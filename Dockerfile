# Install the app dependencies in a full Node docker image
FROM registry.access.redhat.com/ubi8/nodejs-16:latest

#COPY package*.json ./
COPY ["factory-ui/package*.json", "./"]

RUN npm install

RUN npm run build

COPY --from=0 /opt/app-root/src/node_modules /opt/app-root/src/node_modules
COPY . /opt/app-root/src

CMD npm run serve
EXPOSE 3000
