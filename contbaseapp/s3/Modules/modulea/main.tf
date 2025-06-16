provider "aws" {
  region = "ap-south-1"
}
module "CorporateProject_s3" {
  source      = "../../modules/s3"
  bucket_name = var.s3_bucket_name
  environment = "dev"
}

