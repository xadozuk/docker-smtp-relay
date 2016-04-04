FROM alpine:3.3

MAINTAINER Xadozuk <xadozuk@gmail.com>

RUN apk --no-cache add postfix
COPY run postfix /

EXPOSE 25

CMD ["/run"]
