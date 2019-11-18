FROM node:8.15-jessie

ENV HOST 0.0.0.0

WORKDIR  /app

COPY package*.json ./

RUN npm i -g @adonisjs/cli && \
    npm i -g pm2 && \
    npm i --quiet --production

COPY . .

EXPOSE 3331

RUN pwd && ls -al

CMD ["pm2-runtime", "start", "server.js"]