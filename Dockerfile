# Pull base image.
FROM node:alpine

# global install gulp -sass
RUN npm install -g gulp jshint

WORKDIR /mnt

ADD kickoff.sh /root/kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
