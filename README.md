# ubuntu-ssh

Ubuntu Docker container with SSH daemon.

## Usage

```
    docker run -ti --rm -p 2222:22 \
    -e ROOT_PUB_KEY="$(cat ~/.ssh/root.pub)" \
    -e UBUNTU_PUB_KEY="$(cat ~/.ssh/ubuntu.pub)" \
    claudioll/ubuntu-ssh:latest
```

## Build

```
    docker build . -t ubuntu-ssh
    docker tag ubuntu-ssh claudioll/ubuntu-ssh:latest
    docker push claudioll/ubuntu-ssh:latest
```