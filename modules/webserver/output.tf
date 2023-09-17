output "webserver-instance-ip" {
  value = aws_instance.tf-instance-webserver.public_ip
}
output "webserver-instance-id" {
  value = aws_instance.tf-instance-webserver.id
}