provider "aws" {
  region = ap-south-1
}
module "corporateproject_vpc" {
  source = "../../modules/vpc" # Assuming you modularized it

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway  = var.enable_nat_gateway
  single_nat_gateway  = var.single_nat_gateway
  reuse_nat_ips       = var.reuse_nat_ips
  external_nat_ip_ids = var.external_nat_ip_ids
  enable_vpn_gateway  = var.enable_vpn_gateway

  tags = var.tags
}

