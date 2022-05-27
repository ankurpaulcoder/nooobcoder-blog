FROM node:16

WORKDIR /app

COPY package.json yarn.lock ./
COPY . .

RUN yarn install
RUN yarn build

COPY . .

EXPOSE 8888

CMD ["yarn", "start"]
