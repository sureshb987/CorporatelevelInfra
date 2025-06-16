provider "aws" {
  region = ap-south-1
}
module "corporateproject_ecr" {
  source               = "../../modules/ecr"
  repository_name      = var.repository_name
  image_tag_mutability = var.image_tag_mutability
  environment          = var.environment
}

