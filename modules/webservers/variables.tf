variable "web_ami" {
  type        = string
  description = "AMI ID for the web server"
}

variable "web_instance_type" {
  type        = string
  description = "Instance type for the web server"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair"
}

variable "web_sg_id" {
  type        = string
  description = "Security Group ID for the web server"
}

variable "internal_sg_id" {
  type        = string
  description = "Security Group ID for internal services"
}

variable "public_subnet_id" {
  type        = string
  description = "Public subnet ID"
}

variable "private_subnet_id" {
  type        = string
  description = "Private subnet ID"
}
