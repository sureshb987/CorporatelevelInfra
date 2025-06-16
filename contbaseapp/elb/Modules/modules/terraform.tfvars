name         = "corporateproject-elb"
subnets          = [
  "subnet-0c5c788e4db5417f7",
  "subnet-0023a3181c61e2e56"]
security_groups  = ["sg-0192ad3bbaf6db2fd"]
instances        = ["i-0557148a27a4b58b2"]

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
