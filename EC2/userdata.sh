#!/bin/bash
apt-get update -y 
apt install -y docker.io 
apt install -y docker-compose 
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
apt-get update -y 
apt-get install -y fontconfig openjdk-11-jre 
apt-get install -y jenkins 
systemctl start jenkins 
usermod -aG docker jenkins