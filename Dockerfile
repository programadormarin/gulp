# Pull base image.
FROM zenoss/gulp

# global install gulp -sass
RUN npm install -g gulp-sass

ADD ./kickoff.sh

ENTRYPOINT ["/root/kickoff.sh"]
