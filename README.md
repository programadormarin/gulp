Dockerfile for nodejs, npm, and gulp, with a focus on making it as easy as possible to run gulp tasks.

This image expects a directory with a gulpfile to be bind mounted at `/mnt`.

##Example Usage
    #default gulp task
    docker run -tv `pwd`/:/mnt/ zenoss/gulp

    #release gulp task
    docker run -tv `pwd`/:/mnt/ zenoss/gulp release

    #npm install (installs package.json)
    docker run -tv `pwd`/:/mnt/ --entrypoint="npm" zenoss/gulp install

If nodejs is not installed locally, you may want to alias the `docker run` commands to make them easier to use. Note that you will need to run this command from a directory which contains a gulpfile and/or package.json.

    # add this to .bashrc to alias gulp
    alias gulp='docker run -tv `pwd`/:/mnt/ zenoss/gulp'

    # add this to .bashrc to alias npminstall
    alias npminstall='docker run -tv `pwd`/:/mnt/ --entrypoint="npm" zenoss/gulp install'

