provider "aws" {
  region = "ap-south-1"
}
module "corporateproject_route53" {
  source      = "../../modules/route53"
  domain_name = var.domain_name
  record_name = var.record_name
  a_record_ip = var.a_record_ip
  tags        = var.tags
}

