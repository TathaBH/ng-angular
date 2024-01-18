FROM node:20

WORKDIR /app

COPY package*.json /app
COPY . /app

RUN npm install

RUN npm install -g @angular/cli

CMD [ "ng", "serve", "--host", "0.0.0.0"]
