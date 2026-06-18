variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "image_tag" {
  description = "Docker image tag"
  type        = string
}
variable "vpc_cidr" {
  type = string
}

variable "public_subnet_1_cidr" {
  type = string
}

variable "public_subnet_2_cidr" {
  type = string
}

variable "private_subnet_cidr" {
  type = string
}
variable "public_key_path" {
  description = "Path to local public SSH key"
  type        = string
}

variable "ssh_allowed_ip" {
  description = "Your public IP allowed for SSH"
  type        = string
}