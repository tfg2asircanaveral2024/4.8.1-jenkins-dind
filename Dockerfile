FROM jenkins/jenkins:latest-jdk17

USER root

# script para la instalacion de docker
WORKDIR /root
COPY script_instalacion_docker.sh .
RUN chmod u+x script_instalacion_docker.sh
RUN sh -c ./script_instalacion_docker.sh

WORKDIR /var/jenkins_home
USER jenkins
