

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
resource "aws_lb_target_group" "corporateproject_tg" {
  name        = "corporateproject-tg"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "instance"

  health_check {
    path                = "/"
    protocol            = "HTTP"
    port                = "traffic-port"
    healthy_threshold   = 3
    unhealthy_threshold = 3
    timeout             = 5
    interval            = 30
  }

  tags = merge(var.tags, {
    Name = "corporateproject-tg"
  })
}
resource "aws_launch_template" "corporateproject_lt" {
  name_prefix   = "corporateproject-lt-"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip
    security_groups             = var.security_group_ids
    subnet_id                   = var.subnet_id
  }

  tag_specifications {
    resource_type = "instance"
    tags = merge(var.tags, {
      Name = "corporateproject"
    })
  }
}
