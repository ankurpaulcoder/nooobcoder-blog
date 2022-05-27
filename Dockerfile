FROM node:16

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install
RUN yarn build

COPY .next/ .

EXPOSE 8888

CMD ["yarn", "start"]
