FROM debian:7.6
MAINTAINER jaz<jaz@live.in>

RUN apt-get -q update 

RUN echo 'for (( i=1; i>0; i++ ))' >> gv.sh

RUN echo '	do' >> gv.sh
	
	
ENV curl=1


RUN echo '	$curl' >> gv.sh
       
RUN echo '	echo `date`
        sleep 0.5s
	done' >> gv.sh

	
CMD ["bash gv.sh"]	  
