FROM ubuntu:14.10
MAINTAINER azyobuzin <azyobuzin@users.sourceforge.jp>
EXPOSE 3000

RUN apt-get update
RUN apt-get install -y git nodejs npm libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev build-essential
RUN ln -s /usr/bin/nodejs /usr/local/bin/node
RUN git clone https://github.com/ikr7/underhair_api_v2.git
WORKDIR /underhair_api_v2
RUN npm install
ENTRYPOINT ["nodejs", "app.js"]
