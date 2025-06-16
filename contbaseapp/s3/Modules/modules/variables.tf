variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "sb3bucket33"
}

variable "environment" {
  description = "Environment for tagging"
  type        = string
  default     = "dev"
}

variable "bucket_ownership" {
  description = "Object ownership rule for the S3 bucket"
  type        = string
  default     = "BucketOwnerPreferred"
}

variable "bucket_acl" {
  description = "ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "versioning_status" {
  description = "Versioning status for the S3 bucket"
  type        = string
  default     = "Enabled"
}
