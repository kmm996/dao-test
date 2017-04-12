FROM debian:7.6
MAINTAINER jaz<jaz@live.in>

RUN apt-get -q update 

RUN echo 'for (( i=1; i>0; i++ ))' >> gv.sh

RUN echo '	do' >> gv.sh
	
	
ENV curl=1


RUN echo '	$curl' >> gv.sh
       
RUN echo '	echo `date`' >> gv.sh && \
    echo '	sleep 0.5s' >> gv.sh  && \
    echo 'done' >> gv.sh

	
CMD ["gv.sh"]	  
