FROM jenkins:latest

USER root

RUN apt-get update -y \
    && apt-get install apt-transport-https -y \
    ca-certificates 
RUN curl -s 'https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | apt-key add --import
RUN echo "deb https://packages.docker.com/1.11/apt/repo ubuntu-trusty main" | tee -a /etc/apt/sources.list.d/docker.list
RUN apt-get update -y \ 
    &&  apt-get install docker-engine -y
RUN usermod -a -G docker jenkins

ENTRYPOINT /bin/tini -- /usr/local/bin/jenkins.sh
