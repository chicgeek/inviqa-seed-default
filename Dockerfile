FROM quay.io/continuouspipe/php7.2-nginx:stable

ARG GITHUB_TOKEN=
ARG ASSETS_S3_BUCKET=
ARG ASSETS_ENV=
ARG ASSETS_DATABASE_ENABLED=false
ARG AWS_ACCESS_KEY_ID=
ARG AWS_SECRET_ACCESS_KEY=
ARG DEVELOPMENT_MODE=false
ARG RUN_BUILD=
ENV DEVELOPMENT_MODE=$DEVELOPMENT_MODE \
    WEB_SSL_CIPHERS_SWEET32_FIX="true" \
    WEB_SSL_CIPHERS_RSA_FIX="true"

COPY . /app
RUN container build
