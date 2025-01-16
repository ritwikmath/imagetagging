FROM alpine:latest

RUN apk update && \
    apk add --no-cache nginx

RUN mkdir -p /var/log/nginx

WORKDIR /var

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]