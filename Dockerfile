FROM node:14-alpine
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json /home/node/app/ 
RUN npm install
COPY --chown=node:node . /home/node/app/
EXPOSE 3000
CMD [ "npm", "start" ]
