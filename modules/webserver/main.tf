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

data "aws_subnet" "demo_vpc_subnet" {
  id = "subnet-06e7c6b430b61c031"
}

resource "aws_instance" "tf-instance-webserver" {
  subnet_id = data.aws_subnet.demo_vpc_subnet.id
  ami = var.ami
  instance_type = var.instance_type
  tags = var.instance_tags
}