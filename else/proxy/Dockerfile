FROM ubuntu:16.04
MAINTAINER jaz <jaz@live.in>

# install ubuntu sshd
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y wget && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
	
RUN wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/caddy_install.sh && chmod +x caddy_install.sh && bash caddy_install.sh

#ENV domain=https://jialezi.tk
#ENV email=jaz@live.in
ENV proxy=https://www.google.com

RUN echo ":80 { " > /usr/local/caddy/Caddyfile && \

#	echo "$domain  { " > /usr/local/caddy/Caddyfile && \
	echo "gzip  " > /usr/local/caddy/Caddyfile && \
#	echo "tls $email  " > /usr/local/caddy/Caddyfile && \
	echo "proxy / $proxy  " > /usr/local/caddy/Caddyfile && \
	echo "}" > /usr/local/caddy/Caddyfile
	
	
RUN service caddy start


CMD ["service caddy start"]	
