output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "web_sg_id" {
  value = aws_security_group.web_sg.id
}

output "internal_sg_id" {
  value = aws_security_group.internal_sg.id
}
