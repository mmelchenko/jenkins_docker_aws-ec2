#!/bin/bash
# Update package list
apt update -y

# Install OpenJDK 17
apt install -y openjdk-17-jdk docker.io curl gnupg

# Make sure Java 17 is the default
update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java

# Add Jenkins key and repository
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update and install Jenkins
apt update -y
apt install -y jenkins

# Enable and start Jenkins service
systemctl enable jenkins
systemctl start jenkins

# Add Jenkins user to docker group
usermod -aG docker jenkins
systemctl restart jenkins
