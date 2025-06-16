asg_name             = "corporateproject-asg"
launch_template_id   = "lt-0123456789abcdef0"
subnet_ids           = ["subnet-11111111", "subnet-22222222", "subnet-33333333"]
min_size             = 1
max_size             = 3
desired_capacity     = 2
target_group_arns    = ["arn:aws:elasticloadbalancing:ap-south-1:123456789012:targetgroup/my-target-group/abc123"]
health_check_type    = "EC2"
health_check_grace_period = 300

tags = {
  Terraform  = "true"
  Environment = "dev"
  Project     = "corporateproject"
}

