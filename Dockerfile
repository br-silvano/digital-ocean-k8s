FROM node:lts-alpine
WORKDIR /usr/src/app
RUN npm install -g yarn --force
COPY package.json ./
COPY yarn.lock ./
RUN yarn install --prod
COPY ./src ./dist
EXPOSE 3333
ENV NODE_ENV production
ENV PORT 3333
CMD ["yarn", "start"]
