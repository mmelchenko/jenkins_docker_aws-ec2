variable "aws_region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "Subnet CIDR block"
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone"
  default     = "eu-central-1a"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "key_name" {
  description = "SSH key name"
  type        = string
  sensitive   = true
}