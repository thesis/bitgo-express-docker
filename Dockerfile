FROM node:9.8.0

COPY ./bitgo-express-version /etc/

RUN npm install -g "bitgo@$(cat /etc/bitgo-express-version)" --unsafe

ENV PATH "/usr/local/lib/node_modules/bitgo/bin:$PATH"

EXPOSE 3080

CMD bitgo-express --bind 0.0.0.0 --disablessl
