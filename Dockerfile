FROM node:0.12
MAINTAINER Reittiopas version: 0.1

ENV DIR_PATH=/opt/navigatorserver
ENV PORT=8080
RUN mkdir -p ${DIR_PATH}
WORKDIR ${DIR_PATH}
RUN npm install -g grunt-cli
ADD package.json ${DIR_PATH}/package.json
RUN npm install
ADD . ${DIR_PATH}
EXPOSE 8080
RUN chmod -R a+rwX /opt/navigatorserver

CMD grunt server --port ${PORT} --stack
