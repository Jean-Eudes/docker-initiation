#FROM
MAINTAINER Jean-Pascal THIERY <jpthiery@xebia.fr>
RUN /bin/bash -c "mkdir /repot && chown git /repot && chmod 777 /repot"
RUN su git -c "mkdir -p /repot/sampleweb/ && git init --bare /repot/sampleweb"
RUN su git -c "git clone https://github.com/jpthiery/sample-web.git /tmp/localclone"
RUN su git -c "cd /tmp/localclone && git remote add copy file:///repot/sampleweb && git push copy master"


