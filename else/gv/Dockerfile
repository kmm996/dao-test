FROM ubuntu:16.04
MAINTAINER jaz<jaz@live.in>

RUN apt-get  update 

RUN cd /root && \
#    echo '#!/bin/bash' >> gv.sh && \
    echo 'for (( i=1; i>0; i++ ))' >> gv.sh  && \
    echo 'do' >> gv.sh
    
ENV curl=1


RUN echo '$curl' >> gv.sh
       
RUN echo 'echo `date`' >> gv.sh && \
    echo 'sleep 0.5s' >> gv.sh  && \
    echo 'done' >> gv.sh && \
    chmod +x gv.sh
    
RUN /root/gv.sh
	
CMD ["/bin/bash"]	  
