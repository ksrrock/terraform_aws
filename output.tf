/*
output "instance_ip" {
  value = aws_instance.web.id
}

output "instance_ami" {
  value = aws_instance.web.ami
}

output "vpc_id" {
  value = aws_vpc.main.id
}
*/

output "aws_vpc_data" {
  value = data.aws_vpc.tf-data-vpc
}