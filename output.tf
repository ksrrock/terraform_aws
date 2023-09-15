output "first_instance_ip" {
  value = aws_instance.web[0].public_ip
}
output "first_instance_ami" {
  value = aws_instance.web[0].ami
}
output "instance_ip" {
  value = aws_instance.web[*].public_ip
}
