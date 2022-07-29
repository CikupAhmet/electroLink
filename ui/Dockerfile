# Install the app dependencies in a full Node docker image
FROM node:14

# Copy package.json and package-lock.json
# Copy the dependencies into a Slim Node docker image
RUN npm install
CMD npm run start
EXPOSE 3000