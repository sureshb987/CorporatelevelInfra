provider "aws" {
  region = var.aws_region
}
resource "aws_ecr_repository" "corporateproject_ecr" {
  name = var.repository_name

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = var.image_tag_mutability

  tags = {
    Name        = var.repository_name
    Environment = var.environment
  }
}

