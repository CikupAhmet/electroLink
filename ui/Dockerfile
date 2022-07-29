# Install the app dependencies in a full Node docker image
FROM node:14

# Copy package.json and package-lock.json
WORKDIR /home/node/app

# Install app dependencies
COPY factory-ui /home/node/app

# Copy the dependencies into a Slim Node docker image
RUN npm install
CMD npm run start
EXPOSE 3000