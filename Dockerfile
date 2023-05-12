FROM alpine:latest

RUN apk --update --no-cache add curl ca-certificates nginx
RUN apk add php8 php8-xml php8-cli php8-gd php8-mysql php8-pdo php8-mbstring php8-tokenizer php8-bcmath php8-xml php8-fpm php8-curl php8-zip nginx 

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container
COPY ./entrypoint.sh /entrypoint.sh


CMD ["/bin/ash", "/entrypoint.sh"]
