variable "instance_tags" {
  type = object({
    Name=string
  })
}
variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}