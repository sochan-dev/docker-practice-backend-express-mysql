FROM node:14.17.4-alpine
WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./.yarnrc ./
RUN yarn
COPY ./ ./

EXPOSE 4000

CMD ["yarn", "start"]
