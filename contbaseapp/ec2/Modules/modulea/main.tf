
provider "aws" {
  region = "ap-south-1"
}
module "ec2_instance" {
  source  = "../../modules/ec2"

  name                   = var.instance_name
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = var.enable_monitoring
  vpc_security_group_ids = var.security_group_ids
  subnet_id              = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

