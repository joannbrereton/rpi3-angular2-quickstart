FROM resin/rpi-raspbian:jessie-20160831
MAINTAINER joann.brereton@gmail.com

RUN apt-get update && \
    apt-get -qy install	git \
		nano

RUN git clone https://github.com/angular/quickstart.git quickstart

WORKDIR quickstart
RUN npm install
CMD ["npm","start"]
