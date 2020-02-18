FROM node:10-alpine
WORKDIR /server
COPY ./package.json .
RUN yarn
COPY ./dist .
CMD ["node", "main"]