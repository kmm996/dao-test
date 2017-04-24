FROM ubuntu
MAINTAINER jaz<jaz@live.in>

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

ENV curl=1

ADD gv.sh /root
RUN chmod +x /root/gv.sh
    
CMD ["/root/gv.sh"]	  
