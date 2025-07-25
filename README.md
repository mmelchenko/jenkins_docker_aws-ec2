# jenkins_docker_aws-ec2
Provision EC2 with Terraform → Install Jenkins → Configure pipeline to:  Build + test code.  Dockerize it.  Push to Docker Hub.  Deploy to EC2.

In order to apply, you need to define a 'key_name' during command execution.
Example: terraform apply "-var="key_name={{ your_key_pair_name_here }}""
