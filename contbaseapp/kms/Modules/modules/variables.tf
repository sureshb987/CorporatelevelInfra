variable "key_alias" {
  type        = string
  description = "KMS key alias name (e.g., alias/my-key)"
}

variable "description" {
  type        = string
  default     = ""
}

variable "enable_key_rotation" {
  type        = bool
  default     = true
}

variable "policy" {
  type        = string
  description = "IAM policy for KMS key"
}

variable "tags" {
  type        = map(string)
  default     = {}
}

