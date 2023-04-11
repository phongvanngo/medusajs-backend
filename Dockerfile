FROM node:17.1.0

WORKDIR /

COPY package.json .
COPY yarn.* .

COPY . .

RUN yarn

RUN yarn build-linux

ENTRYPOINT ["yarn","start:prod"]
