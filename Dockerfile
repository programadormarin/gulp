# Pull base image.
FROM node:alpine

MAINTAINER Hermenegildo Marin Júnior <hmarinjr@gmail.com>

# global install gulp -sass
RUN apk add --no-cache libc6-compat
RUN npm i -g gulp jshint

RUN mkdir -p /mnt
VOLUME /mnt
WORKDIR /mnt

ADD kickoff.sh /root/kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
