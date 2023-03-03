# Docker to build oapi-cli on an old, but still maintain distro, so appimage have the best backward compatibility

```sh
docker build --no-cache -t oapi-build ./docker
```

```sh
docker run -v $PWD:/oapi-cli oapi-build scl enable devtoolset-11 /oapi-cli/docker/make.sh
```
