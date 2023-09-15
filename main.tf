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

resource "aws_instance" "web" {
  count = 2
  ami           = var.ami
  instance_type = "t2.large"
  tags = {
    Name = "${var.ec2_name} -${count.index}"
  }
}