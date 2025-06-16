provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_elb" {
  source = "../../modules/elb"

  name               = var.elb_name
  subnets            = var.subnets
  security_groups    = var.security_groups
  instances          = var.instances
  listener           = var.listener
  health_check       = var.health_check
  tags               = var.tags
}

