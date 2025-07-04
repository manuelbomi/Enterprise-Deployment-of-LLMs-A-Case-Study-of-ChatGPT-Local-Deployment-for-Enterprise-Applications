FROM node:18-alpine3.16 as builder

WORKDIR /app

COPY package.json yarn.lock ./

Run apk add ca-certificates
COPY ./*.pem ./
RUN for file in *.pem; do mv -- "$file" "${file%.pem}.crt"; done \
	&& cp -p *.crt /usr/local/share/ca-certificates \
	&& update-ca-certificates;

ENV CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
ENV REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
ENV NODE_EXTRA_CA_CERTS=/etc/ssl/certs/ca-certificates.crt

RUN yarn install && yarn cache clean

COPY . .

RUN yarn build


FROM node:18-alpine3.16

ENV NITRO_PORT=80

WORKDIR /app

COPY --from=builder /app/.output/ .

EXPOSE 80

# TODO: You can use NITRO_PRESET=node_cluster in order to leverage multi-process performance using Node.js cluster module. https://nuxt.com/docs/getting-started/deployment

ENTRYPOINT ["node", "server/index.mjs"]