provider "aws" {
  region = "ap-south-1"
}
module "CorporateProject_rds" {
  source      = "../../modules/rds"
  environment = "dev"
  db_name     = "CorporateProject_db"
  db_user     = "devuser"
  db_password = var.db_password
  subnet_ids  = module.CorporateProject_vpc.public_subnets
}
