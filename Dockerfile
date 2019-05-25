FROM openjdk:8-jre-alpine

MAINTAINER sebgru v4.7.2

ADD https://downloads.sourceforge.net/project/davmail/davmail/4.7.2/davmail-linux-x86_64-4.7.2-2427.tgz /tmp/davmail.tgz

RUN adduser davmail -D && \
  mkdir /usr/local/davmail && \
  tar -xzf /tmp/davmail.tgz --strip-components=1 -C /usr/local/davmail && \
  rm /tmp/davmail.tgz && \
  mkdir /var/log/davmail && \
  chown davmail:davmail /var/log/davmail -R 

VOLUME        /etc/davmail

EXPOSE        1080
EXPOSE        1143
EXPOSE        1389
EXPOSE        1110
EXPOSE        1025
WORKDIR       /usr/local/davmail

USER davmail

CMD ["/usr/local/davmail/davmail.sh", "/etc/davmail/davmail.properties"]
