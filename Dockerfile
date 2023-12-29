FROM ubuntu:latest

ARG ROOT_PUB_KEY
ARG UBUNTU_PUB_KEY
ENV ROOT_PUB_KEY=""
ENV UBUNTU_PUB_KEY=""

EXPOSE 22

RUN apt update && apt install openssh-server sudo rsync fdupes rdfind -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu 

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

RUN service ssh start

CMD [ "/entrypoint.sh" ]
