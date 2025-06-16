variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}
variable "name" {
  type        = string
  description = "Auto Scaling Group name"
}

variable "launch_template_id" {
  type        = string
  description = "Launch Template ID"
}

variable "vpc_zone_identifier" {
  type        = list(string)
  description = "List of subnet IDs"
}

variable "min_size" {
  type        = number
}

variable "max_size" {
  type        = number
}

variable "desired_capacity" {
  type        = number
}

variable "target_group_arns" {
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  type        = string
  default     = "EC2"
}

variable "health_check_grace_period" {
  type        = number
  default     = 300
}

variable "tags" {
  type        = map(string)
  default     = {}
}
