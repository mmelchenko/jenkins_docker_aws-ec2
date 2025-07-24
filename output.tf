output "instance_public_ip" {
  description = "Public IP of Jenkins EC2 instance"
  value       = aws_instance.jenkins_server.public_ip
}

output "instance_id" {
  description = "ID of Jenkins EC2 instance"
  value       = aws_instance.jenkins_server.id
}