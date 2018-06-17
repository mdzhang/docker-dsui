FROM node:8-slim

RUN set -x \
	&& apt-get update && apt-get install -y curl \
		--no-install-recommends \
	&& apt-get purge --auto-remove -y curl \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 3000

ENV DATASTORE_PROJECT_ID="dev-0" \
    DATASTORE_HOST="localhost:8081"

RUN npm i -g @streamrail/dsui

ENV PATH=/node_modules/.bin:${PATH}

CMD ["dsui", "-e", "$DATASTORE_HOST"]
