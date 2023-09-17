terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Terraform modules

module "webserver_module" {
  source = "./modules/webserver"
  instance_tags = {
    Name="webserver-terraform-instance"
  }
  ami = "ami-04cb4ca688797756f"
  instance_type = "t2.medium"
}

output "webserver_instance_output" {
  value = module.webserver_module.webserver-instance-ip
}

output "webserver_instance_output-id" {
  value = module.webserver_module.webserver-instance-id
}

#resource "aws_vpc" "main" {
#  cidr_block = "10.5.0.0/16"
#
#  tags = var.vpc_tags
#}
#
#resource "aws_subnet" "main" {
#  vpc_id     = aws_vpc.main.id
#  cidr_block = "10.5.0.0/25"
#
#  tags = {
#    Name = "tuts-subnet"
#  }
#}
#
#resource "aws_instance" "web" {
#  ami           = var.ami
#  instance_type = "t2.large"
#  subnet_id     = aws_subnet.main.id
#
#  tags = {
#    Name = var.ec2_name
#  }
#}