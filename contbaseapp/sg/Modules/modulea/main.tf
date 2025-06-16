provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_sg" {
  source = "../../modules/sg"

  name        = var.sg_name
  vpc_id      = var.vpc_id
  description = var.sg_description

  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
  tags          = var.tags
}

