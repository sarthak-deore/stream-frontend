FROM node:20-alpine

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 5173

ENV NAME client

CMD ["npm", "run", "dev"]