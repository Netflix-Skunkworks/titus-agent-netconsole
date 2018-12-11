## Build
### Build the docker image debian build environment
```bash
$ docker build -t deb release/
```

### Build the debian package
Set the build number to an integer.

e.g.
```bash
$ rm -rf titus-agent*
$ docker run --rm -e "BUILD_NUMBER=2" -v $PWD:/src deb:latest
```

