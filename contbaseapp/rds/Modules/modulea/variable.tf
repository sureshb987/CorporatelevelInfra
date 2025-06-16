variable "db_name" {
  type        = string
  default     = "CorporateProject_db"
}

variable "db_user" {
  type        = string
  default     = "devuser"
}

variable "environment" {
  type        = string
  default     = "dev"
}

variable "subnet_ids" {
  type        = list(string)
}

variable "sg_ids" {
  type        = list(string)
}

