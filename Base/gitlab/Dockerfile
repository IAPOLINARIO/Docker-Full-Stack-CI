FROM gitlab/gitlab-ce

RUN apt-get update \
     && apt-get install -y sudo 

RUN rm -f /etc/gitlab/gitlab.rb

COPY gitlab.rb /etc/gitlab/