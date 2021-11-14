FROM mhart/alpine-node:10
FROM alpine:3.7

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 10

COPY --from=0 /usr/bin/node /usr/bin/

RUN apk update nodejs
RUN apk add --update nodejs-npm
#USER node 
WORKDIR /srv

#RUN chown -R node:node /srv

RUN npm install -g grunt-cli
RUN npm install

ENV NODE_OPTIONS="--max-old-space-size=2048"
