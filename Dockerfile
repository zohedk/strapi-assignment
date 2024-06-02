# dev.Dockerfile
FROM node:18-alpine AS builder

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . ./

RUN npm run build

EXPOSE 1337

CMD ["npm", "run", "start"]


