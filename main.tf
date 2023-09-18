terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-local-testing"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

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

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = var.ec2_name
  }
}