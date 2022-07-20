# Search in dockerhub for Jenkins

docker search jenkins

docker pull jenkins/jenkins:lts

# Por 50000 use to connect the agents
docker run --rm -p 8081:8080 -p 50000:50000 --name jenkins-master jenkins/jenkins:lts

# Get Initial Passwork
docker exec -it jenkins-master /bin/bash
cat /var/jenkins_home/secrets/initialAdminPassword

