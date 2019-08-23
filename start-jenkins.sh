#!/bin/bash

name='jenkins'

[[ -d /var/jenkins_home ]] || mkdir /var/jenkins_home
chmod 777 /var/jenkins_home

[[ $(docker ps -f "name=$name" --format '{{.Names}}') == $name ]] || docker run -d -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts

