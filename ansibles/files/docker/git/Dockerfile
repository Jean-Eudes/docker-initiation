FROM ubuntu
MAINTAINER Jean-Pascal THIERY <jpthiery@xebia.fr>

RUN sudo apt-get update && sudo sudo apt-get install -y git-core openssh-server && sudo apt-get clean
RUN mkdir -p /var/run/sshd

RUN adduser --shell /bin/bash git
RUN echo git:git | chpasswd
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ADD start.sh /start.sh
RUN chmod +x /start.sh 

EXPOSE 22
ENTRYPOINT /start.sh

