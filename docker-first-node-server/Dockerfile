# stage 1 building the code
# FROM node as builder
# WORKDIR /usr/app
#COPY . .
#RUN npm run build

# stage 2
# FROM node
# WORKDIR /usr/app
# 
# 
# CMD node dist/docker-first-node-server/index.js


FROM node:12-stretch

USER node

WORKDIR /home/node/src

COPY --chown=node:node index.js .

CMD ["node", "index.js"]