variable "name" {
  type        = string
  description = "Name for the EFS file system"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets to place EFS mount targets"
}

variable "security_group_id" {
  type        = string
  description = "Security Group ID for EFS"
}

variable "performance_mode" {
  type        = string
  default     = "generalPurpose"
}

variable "throughput_mode" {
  type        = string
  default     = "bursting"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

