FROM docker.io/library/node:9.2

ADD . /pegaswitch
WORKDIR /pegaswitch

RUN npm install
RUN npm install pty.js

EXPOSE 53 53/udp 80 8100

CMD node start.js --ip $IP_ADDR
