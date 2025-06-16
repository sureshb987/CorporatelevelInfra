provider "aws" {
  region = "ap-south-1"
}
data "aws_caller_identity" "current" {}

resource "aws_kms_key" "corporateproject" {
  description         = var.description
  enable_key_rotation = var.enable_key_rotation

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "kms-policy"
    Statement = [
      {
        Sid       = "AllowRootAccount"
        Effect    = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        }
        Action    = "kms:*"
        Resource  = "*"
      }
    ]
  })

  tags = merge(var.tags, {
    Name = "corporateproject-kms"
  })
}

resource "aws_kms_alias" "corporateproject" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.corporateproject.key_id
}
