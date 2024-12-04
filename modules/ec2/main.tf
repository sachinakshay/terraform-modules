resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = var.tags
}

output "ec2_id" {
  value = aws_instance.ec2_instance.id
}
