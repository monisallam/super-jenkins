FROM jenkins:latest

USER root

RUN apt-get update -y \
    && apt-get install docker.io -y

ENTRYPOINT /bin/tini -- /usr/local/bin/jenkins.sh
