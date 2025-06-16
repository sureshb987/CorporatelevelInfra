provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_kms" {
  source = "../../modules/kms"

  key_alias       = var.kms_key_alias
  description     = var.kms_description
  enable_key_rotation = var.kms_enable_key_rotation
  policy          = var.kms_policy
  tags            = var.tags
}

