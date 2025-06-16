provider "aws" {
  region = "ap-south-1"
}
resource "aws_elb" "corporateproject" {
  name               = var.name
  subnets            = var.subnets
  security_groups    = var.security_groups
  instances          = var.instances

  listener {
    count             = length(var.listener)
    instance_port     = var.listener[count.index].instance_port
    instance_protocol = var.listener[count.index].instance_protocol
    lb_port           = var.listener[count.index].lb_port
    lb_protocol       = var.listener[count.index].lb_protocol
  }

  health_check {
    target              = var.health_check.target
    interval            = var.health_check.interval
    timeout             = var.health_check.timeout
    healthy_threshold   = var.health_check.healthy_threshold
    unhealthy_threshold = var.health_check.unhealthy_threshold
  }

  tags = merge(var.tags, {
    Name = var.name
  })
}

