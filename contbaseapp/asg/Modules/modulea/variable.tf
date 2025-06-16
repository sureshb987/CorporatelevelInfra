variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}
variable "asg_name" {
  type        = string
  description = "Name of the Auto Scaling Group"
}

variable "launch_template_id" {
  type        = string
  description = "ID of the launch template"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for ASG"
}

variable "min_size" {
  type        = number
  description = "Minimum number of instances"
}

variable "max_size" {
  type        = number
  description = "Maximum number of instances"
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of instances"
}

variable "target_group_arns" {
  type        = list(string)
  description = "List of ALB/NLB target group ARNs"
  default     = []
}

variable "health_check_type" {
  type        = string
  description = "Health check type (EC2 or ELB)"
  default     = "EC2"
}

variable "health_check_grace_period" {
  type        = number
  description = "Health check grace period in seconds"
  default     = 300
}

variable "tags" {
  type        = map(string)
  description = "Tags for the ASG"
}

