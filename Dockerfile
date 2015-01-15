# Pull base image.
FROM dockerfile/nodejs

# global install gulp and jshint
RUN npm install -g gulp jshint

# Define working directory.
WORKDIR /mnt

ENTRYPOINT ["gulp"]
