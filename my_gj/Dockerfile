FROM ubuntu:14.04

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim-tiny \
		xfce4 xfce4-goodies \
		x11vnc xvfb \
		firefox \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/mozilla/extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/ \
	cd /usr/share/mozilla/extensions/\{ec8030f7-c20a-464f-9b0e-13a3a9e97384\}/ \
	wget https://www.ebesucher.com/data/firefoxaddon/latest.xpi -O jid1-GxlI1BHOBUCNhw@jetpack.xpi \
	chmod 0755 jid1-GxlI1BHOBUCNhw@jetpack.xpi \
	wget https://addons.mozilla.org/firefox/downloads/latest/vagex-firefox-add-on/addon-321174-latest.xpi?src=dp-btn-primary -O ffaddon@vagex.com.xpi \
	chmod 0755 ffaddon\@vagex.com.xpi

WORKDIR /root

ADD startup.sh ./
ADD supervisord.conf ./
ADD passwd ./

RUN chmod 0600 passwd

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
