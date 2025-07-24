#!/bin/bash
apt update -y
apt install -y openjdk-11-jdk docker.io curl gnupg

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

apt update -y
apt install -y jenkins

systemctl enable jenkins
systemctl start jenkins

usermod -aG docker jenkins
systemctl restart jenkins
