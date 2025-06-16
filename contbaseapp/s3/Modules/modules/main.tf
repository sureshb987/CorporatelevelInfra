provider "aws" {
  region = var.aws_region
}

# S3 Bucket
resource "aws_s3_bucket" "SB3" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

# S3 Bucket Ownership Controls
resource "aws_s3_bucket_ownership_controls" "SB4" {
  bucket = aws_s3_bucket.SB3.id

  rule {
    object_ownership = var.bucket_ownership
  }
}

# S3 Bucket ACL
resource "aws_s3_bucket_acl" "SB5" {
  depends_on = [aws_s3_bucket_ownership_controls.SB4]
  bucket     = aws_s3_bucket.SB3.id
  acl        = var.bucket_acl
}

# S3 Bucket Versioning
resource "aws_s3_bucket_versioning" "SB6" {
  bucket = aws_s3_bucket.SB3.id

  versioning_configuration {
    status = var.versioning_status
  }
}

