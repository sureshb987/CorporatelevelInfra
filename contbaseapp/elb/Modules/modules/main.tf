provider "aws" {
  region = "ap-south-1"
}
resource "aws_elb" "corporateproject" {
  name            = var.name
  subnets         = var.subnets
  security_groups = var.security_groups
  instances       = var.instances

  dynamic "listener" {
    for_each = var.listener
    content {
      instance_port     = listener.value.instance_port
      instance_protocol = listener.value.instance_protocol
      lb_port           = listener.value.lb_port
      lb_protocol       = listener.value.lb_protocol
    }
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


