
variable "description" {
  description = "KMS key description"
  type        = string
  default     = "KMS key for CorporateProject"
}

variable "enable_key_rotation" {
  description = "Enable key rotation"
  type        = bool
  default     = true
}

variable "key_alias" {
  description = "Alias for the KMS key (without 'alias/' prefix)"
  type        = string
  default     = "corporateproject-kms"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "CorporateProject"
  }
}

