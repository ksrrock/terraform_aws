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

data "aws_vpc" "tf-data-vpc" {
  id = "vpc-0e1e9a3233f8de119"
}
/*
resource "aws_vpc" "main" {
  cidr_block = "10.5.0.0/16"

  tags = var.vpc_tags
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.5.0.0/25"

  tags = {
    Name = "tuts-subnet"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.large"
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = var.ec2_name
  }
}
*/

