FROM node:17-alpine

WORKDIR /home/node/app
COPY package.json package-lock.json ./

RUN npm i

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
