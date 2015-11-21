FROM node:5.0.0

RUN npm install -g "bitgo@0.11.47"

ENV PATH "/usr/local/lib/node_modules/bitgo/bin:$PATH"

EXPOSE 3080

CMD bitgo-express --bind 0.0.0.0 --disablessl
