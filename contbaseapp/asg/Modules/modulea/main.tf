provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_asg" {
  source = "../../modules/asg"

  name                      = var.asg_name
  launch_template_id        = var.launch_template_id
  vpc_zone_identifier       = var.subnet_ids
  min_size                  = var.min_size
  max_size                  = var.max_size
  desired_capacity          = var.desired_capacity
  target_group_arns         = var.target_group_arns
  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period
  tags                      = var.tags
}

