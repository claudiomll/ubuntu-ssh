# ubuntu-ssh

Ubuntu Docker container with SSH daemon.

Usage:

```docker run -ti --rm -p 2222:22 \
    -e ROOT_PUB_KEY="$(cat ~/.ssh/root.pub)" \
    -e UBUNTU_PUB_KEY="$(cat ~/.ssh/ubuntu.pub)" \
    ubuntu-ssh:latest
```
