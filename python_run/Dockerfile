# ubuntu_python3_redis_requests
# download a py file and run
# docker run -it -e PYFILE=pan.xiaofd.win/hello2.py  daocloud.io/405102091/python_run
# export ENV PYFILE

FROM ubuntu:16.04
MAINTAINER xiaofd <admin@chit.cf>

# install ubuntu sshd
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y openssh-server  --no-install-recommends && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
	
RUN mkdir /var/run/sshd && \
	echo 'root:root' | chpasswd && \
	sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \ 
	sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

# install python and others
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y tmux wget redis-server python3 python3-pip python3-dev  --no-install-recommends && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
  
RUN pip3 install -U pip requests redis

ENV PYFILE=pan.xiaofd.win/hello.py

RUN cd /root && \
  echo "#!/bin/bash" > run.sh && \
  #echo '/etc/init.d/ssh start &' >> run.sh && \
  echo 'wget "$PYFILE" -O run.py' >> run.sh && \
  echo 'tmux new-session -d "/usr/bin/python3 run.py 2>&1"' >> run.sh && \
  #echo '/etc/init.d/ssh stop &' >> run.sh && \
  echo "/usr/sbin/sshd -D" >> run.sh && \
  chmod +x run.sh

EXPOSE 22

CMD    ["/root/run.sh"]
