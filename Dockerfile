FROM node:9.5.0

RUN npm install -g yarn

EXPOSE 3000

ENV DATASTORE_PROJECT_ID="dev-0" \
    DATASTORE_HOST="localhost:8081"

RUN yarn add @streamrail/dsui jquery bootstrap popper.js
RUN cd /node_modules/@streamrail/dsui && yarn

ENV PATH=/node_modules/.bin:${PATH}

CMD ["sh", "-c", "dsui -e ${DATASTORE_HOST}"]
