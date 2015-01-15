Dockerfile for nodejs, npm, and gulp, with a focus on making it as easy as possible to run gulp tasks.

This image expects a directory with a gulpfile to be mounted at `/mnt`.

##Example Usage
    #default gulp task
    docker run -tv `pwd`/:/mnt/ zenoss/gulp

    #release gulp task
    docker run -tv `pwd`/:/mnt/ zenoss/gulp release

    #npm install (installs package.json)
    docker run -tv `pwd`/:/mnt/ --entrypoint="npm" zenoss/gulp install
