FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y iputils-ping pgbadger
RUN apt-get clean all

RUN mkdir -p /data

VOLUME /data

WORKDIR /data

CMD ["/bin/bash"]
