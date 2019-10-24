FROM node:8.15-jessie

WORKDIR ./project /app

COPY ./project/package*.json ./

RUN npm i -g @adonisjs/cli && \
    npm i -g pm2 && \
    npm i --quiet --production

COPY ./project .

EXPOSE 3331

RUN pwd && ls -al

CMD ["pm2-runtime", "start", "server.js"]