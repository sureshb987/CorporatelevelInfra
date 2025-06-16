provider "aws" {
  region = "ap-south-1"
}
resource "aws_kms_key" "corporateproject" {
  description             = var.description
  enable_key_rotation     = var.enable_key_rotation
  policy                  = var.policy

  tags = merge(var.tags, {
    Name = "corporateproject-kms"
  })
}

resource "aws_kms_alias" "corporateproject" {
  name          = var.key_alias
  target_key_id = aws_kms_key.corporateproject.key_id
}

