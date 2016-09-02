# super-jenkins
Jenkins container image with docker client, meant to be used after mounting underlying docker host socket and compose binary

example usage:

docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/local/bin/docker-compose:/usr/local/bin/docker-compose monis-jenkins
