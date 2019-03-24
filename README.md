# Getting started

## Build

```
$ ./build.sh
```

## Run

```
$ docker run  -e SSH_KEY_PUB="$(cat ~/.ssh/id_rsa.pub)" -e SSH_KEY_PRIV="$(cat ~/.ssh/id_rsa)" -e GIT_REPO="git@github.com:korczis/my-repo.git" -it zdeny-docker

```
