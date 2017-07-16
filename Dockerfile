FROM mhart/alpine-node:base-8.1.4

RUN mkdir /app
WORKDIR /app

COPY package.json server.js mime-types.json /app/

EXPOSE 8081
USER nobody

CMD node server.js
