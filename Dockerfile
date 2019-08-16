FROM node:12.7.0-alpine
MAINTAINER Paul
RUN apk update && apk add python2
RUN mkdir /sinopia && cd /sinopia && npm install sinopia
COPY config.yaml /root/.config/sinopia/config.yaml
VOLUME /storage
CMD ["node", "/sinopia/node_modules/sinopia/bin/sinopia"]
EXPOSE 4873
