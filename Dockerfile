# Pull base image.
FROM dockerfile/nodejs

# global install gulp and jshint
RUN npm install -g gulp jshint

# Define working directory.
WORKDIR /mnt

# Use custom jshint options
ADD .jshintrc /root/.jshintrc
ADD kickoff.sh /root/kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
