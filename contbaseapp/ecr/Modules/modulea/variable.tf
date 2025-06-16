variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "Whether image tags are MUTABLE or IMMUTABLE"
  type        = string
  default     = "MUTABLE"
}

variable "environment" {
  description = "Environment (dev/staging/prod)"
  type        = string
}

