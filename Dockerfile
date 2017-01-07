# squid-net-speeder
FROM ubuntu:16.10
MAINTAINER xiaofd <admin@chit.cf>
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y openssh-server  && \
	apt-get clean

RUN echo 'root:root' | chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
