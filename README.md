## Build
### Build the docker image debian build environment
```bash
$ docker build -t deb release/
```

### Build the debian package
```bash
$ rm -rf titus-agent*
$ docker run --rm -e "TITUS_NETCONSOLE_VERSION=0.1" -v $PWD:/src deb:latest
```

