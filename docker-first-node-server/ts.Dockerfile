    FROM node:12-stretch
    USER node
    RUN mkdir /home/node/src
    WORKDIR /home/node/src
    COPY --chown=node:node package.json package-lock.json tsconfig.json ./
    RUN npm install 
    COPY --chown=node:node index.ts .
    RUN npm run build
    CMD ["node", "./dist/index.js"]