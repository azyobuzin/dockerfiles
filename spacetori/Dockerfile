FROM ubuntu:14.10
MAINTAINER azyobuzin <azyobuzin@users.sourceforge.jp>
EXPOSE 3000

RUN apt-get update
RUN apt-get install -y git nodejs npm libcairo2-dev libjpeg8-dev build-essential
RUN ln -s /usr/bin/nodejs /usr/local/bin/node
RUN git clone https://github.com/ikr7/space-doitsu-no-tori-API.git
WORKDIR /space-doitsu-no-tori-API
RUN npm install
RUN ./node_modules/.bin/lsc -c app.ls
ENV PORT=3000
ENTRYPOINT ["nodejs", "app.js"]
