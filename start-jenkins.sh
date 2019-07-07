#!/bin/bash

mkdir /var/jenkins_home
chmod 777 /var/jenkins_home
docker run -d -p 8080:8080 -p 50000:50000 -v /opt/jenkins_home:/var/jenkins_home jenkins
