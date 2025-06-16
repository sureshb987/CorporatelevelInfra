variable "kms_key_alias" {
  type        = string
  default     = "alias/corporateproject"
  description = "Alias name for the KMS key"
}

variable "kms_description" {
  type        = string
  default     = "KMS key for corporateproject"
}

variable "kms_enable_key_rotation" {
  type        = bool
  default     = true
}

variable "kms_policy" {
  type        = string
  description = "JSON IAM policy for the KMS key"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

