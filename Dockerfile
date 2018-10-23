FROM node:6.9.5

COPY ./bitgo-express-version /etc/

RUN npm install -g "bitgo@$(cat /etc/bitgo-express-version)" --unsafe

ENV PATH "/usr/local/lib/node_modules/bitgo/bin:$PATH"
ENV prod false

EXPOSE 3080

CMD sh -c 'if [ "$prod" = true ]; then bitgo-express --bind 0.0.0.0 --env prod --disablessl; else bitgo-express --bind 0.0.0.0 --env test; fi'
