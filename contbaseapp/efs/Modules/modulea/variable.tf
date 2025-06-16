variable "efs_name" {
  type        = string
  description = "Name of the EFS file system"
  default     = "corporateproject-efs"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for EFS mount targets"
}

variable "security_group_id" {
  type        = string
  description = "Security group ID to allow NFS"
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
  description = "Tags for EFS and mount targets"
}

