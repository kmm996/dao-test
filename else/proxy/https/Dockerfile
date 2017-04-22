FROM kmm996/proxy
MAINTAINER jaz <jaz@live.in>

ENV proxy https://www.google.com
ENV host https://geeglo.ml
ENV email 996@live.in

RUN rm -rf /usr/local/caddy/Caddyfile && \
        echo "$host { " >> /usr/local/caddy/Caddyfile && \
        echo "gzip" >> /usr/local/caddy/Caddyfile  && \
		echo "tls $email" >> /usr/local/caddy/Caddyfile  && \
        echo "proxy / $proxy" >> /usr/local/caddy/Caddyfile  && \
        echo "}" >> /usr/local/caddy/Caddyfile

RUN echo "#!/bin/bash" >> /root/run.sh && \
        echo "/etc/init.d/caddy start" >> /root/run.sh && \
        chmod +x /root/run.sh && \
        echo "/bin/bash" >> /root/run.sh
	

CMD ["./root/run.sh"]  