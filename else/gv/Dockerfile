FROM ubuntu
MAINTAINER jaz<jaz@live.in>

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

ENV curl=1

RUN cd /root && \
    echo '#!/bin/bash' >> gv.sh && \
    echo 'for (( i=1; i>0; i++ ))' >> gv.sh  && \
    echo 'do' >> gv.sh && \ 
    echo '$curl' >> gv.sh && \
    echo 'echo `date`' >> gv.sh && \
    echo 'sleep 0.5s' >> gv.sh  && \
    echo 'done' >> gv.sh && \
    chmod +x gv.sh
    
CMD ["/root/gv.sh"]	  
