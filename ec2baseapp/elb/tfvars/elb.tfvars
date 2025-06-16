elb_name         = "corporateproject-elb"
subnets          = ["subnet-abc123", "subnet-def456"]
security_groups  = ["sg-12345678"]
instances        = ["i-0123456789abcdef0", "i-0fedcba9876543210"]

listener = [
  {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }
]

health_check = {
  target              = "HTTP:80/"
  interval            = 30
  timeout             = 5
  healthy_threshold   = 2
  unhealthy_threshold = 2
}

tags = {
  Name        = "corporateproject-elb"
  Environment = "dev"
  Terraform   = "true"
}

