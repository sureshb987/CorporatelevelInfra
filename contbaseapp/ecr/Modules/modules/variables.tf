variable "aws_region" {
  type    = string
  default = "ap-south-1"
}
variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "Whether image tags are mutable or immutable"
  type        = string
  default     = "MUTABLE"
}

variable "environment" {
  description = "Environment name like dev, prod"
  type        = string
}

