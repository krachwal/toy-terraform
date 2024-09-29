# Web Server
resource "aws_instance" "web_server" {
  ami             = var.web_ami
  instance_type   = var.web_instance_type
  key_name        = var.key_name
  security_groups = [var.web_sg_id]
  subnet_id       = var.public_subnet_id

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF
}