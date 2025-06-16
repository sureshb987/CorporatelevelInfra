provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_efs" {
  source = "../../modules/efs"

  name              = var.efs_name
  subnet_ids        = var.subnet_ids
  security_group_id = var.security_group_id
  performance_mode  = var.performance_mode
  throughput_mode   = var.throughput_mode
  tags              = var.tags
}

