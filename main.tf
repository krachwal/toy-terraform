provider "aws" {
  region = "us-west-2"
}

module "core" {
  source              = "./modules/core"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  availability_zone   = "us-west-2a"
}

resource "aws_key_pair" "my_key" {
  key_name   = "my-key"
  public_key = file("~/.ssh/MyTechKey.pub")
}

module "webservers" {
  source            = "./modules/webservers"
  web_ami           = "ami-08d8ac128e0a1b91c"
  web_instance_type = "t2.micro"
  key_name          = aws_key_pair.my_key.key_name
  web_sg_id         = module.core.web_sg_id
  internal_sg_id    = module.core.internal_sg_id
  public_subnet_id  = module.core.public_subnet_id
  private_subnet_id = module.core.private_subnet_id
}