provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_acm" {
  source = "../../modules/acm"

  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method         = var.validation_method
  zone_id                   = var.zone_id
  tags                      = var.tags
}

