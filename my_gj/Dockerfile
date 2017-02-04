FROM ubuntu:14.04

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim-tiny \
		xfce4 xfce4-goodies \
		x11vnc xvfb \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN sed "s|#\(.*multiverse\)|\1|g" /etc/apt/sources.list -i \
	&& apt-get update \
	&& apt-get install -y flashplugin-installer \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p '/usr/share/mozilla/extensions/{ec8030f7-c20a-464f-9b0e-13a3a9e97384}' \
	&& cd '/usr/share/mozilla/extensions/{ec8030f7-c20a-464f-9b0e-13a3a9e97384}' \
	&& wget https://www.ebesucher.com/data/firefoxaddon/latest.xpi -O 'jid1-GxlI1BHOBUCNhw@jetpack.xpi' \
	&& chmod 0755 'jid1-GxlI1BHOBUCNhw@jetpack.xpi' \
	&& wget http://vagex.com/vagex-1.0.6.xpi -O 'ffaddon@vagex.com.xpi' \
	&& chmod 0755 'ffaddon@vagex.com.xpi'

WORKDIR /root

ADD startup.sh ./
ADD supervisord.conf ./
ADD passwd ./

RUN chmod 0600 passwd \
	&& chmod +x startup.sh

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
#CMD ["./startup.sh"]
