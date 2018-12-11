## Build
### Build the docker image debian build environment
```bash
$ docker build -t deb release/
```

### Build the debian package
```bash
$ docker run --rm -it -v $PWD:/src deb:latest
```
