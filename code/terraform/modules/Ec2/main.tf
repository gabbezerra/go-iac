resource "aws_instance" "teste" {
  ami = var.inst_ami
  instance_type = var.inst_type
  key_name = var.inst_key
  tags = var.tags
 }