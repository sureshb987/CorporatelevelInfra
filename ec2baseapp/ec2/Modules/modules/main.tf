provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "corporateproject_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  associate_public_ip_address = var.associate_public_ip
  monitoring                  = true

  tags = merge(var.tags, {
    Name = "corporateproject"
  })
}

