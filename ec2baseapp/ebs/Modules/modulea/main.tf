provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_ebs" {
  source            = "../../modules/ebs"
  availability_zone = var.availability_zone
  volume_size       = var.volume_size
  volume_type       = var.volume_type
  encrypted         = var.encrypted
  device_name       = var.device_name
  instance_id       = var.instance_id
  tags              = var.tags
}

