FROM node:16
WORKDIR /app
EXPOSE 3002

FROM node:16
WORKDIR /src
COPY ["factory-ui/package*.json", "./"]

# workaround for quick packages
# COPY node_modules ./node_modules
#ADD ["Ui/Nova.Ui/nodemodules.tar.gz", "./"]
#ADD nodemodules.tar.gz ./
RUN npm install

RUN chmod -R 777 /src
#RUN npm run build

COPY --from=0 /opt/app-root/src/node_modules /opt/app-root/src/node_modules
COPY . /opt/app-root/src

CMD npm run serve
EXPOSE 3000
