# Pull base image.
FROM dockerfile/nodejs

# global install gulp and jshint
RUN npm install -g gulp jshint
RUN npm install -g gulp-sass

# Define working directory.
WORKDIR /mnt

ADD kickoff.sh /root/kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
