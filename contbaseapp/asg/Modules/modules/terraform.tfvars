name             = "corporateproject-asg"
launch_template_id   = "lt-0f35148cb55a99229"
vpc_zone_identifier    = [
  "subnet-0c5c788e4db5417f7",
  "subnet-0023a3181c61e2e56",]
min_size             = 1
max_size             = 3
desired_capacity     = 2
target_group_arns    = ["arn:aws:elasticloadbalancing:ap-south-1:221082177645:targetgroup/corporateproject-tg/bfb5595bf9fa0214"]
health_check_type    = "EC2"
health_check_grace_period = 300

tags = {
  Terraform  = "true"
  Environment = "dev"
  Project     = "corporateproject"
}
