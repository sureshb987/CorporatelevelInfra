variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "bucket" {
  type = string
}

variable "acl" {
  type    = string
  default = "private"
}

variable "force_destroy" {
  type    = bool
  default = false
}

variable "object_ownership" {
  type    = string
  default = "ObjectWriter"
}

variable "attach_elb_log_delivery_policy" {
  type    = bool
  default = false
}

variable "attach_lb_log_delivery_policy" {
  type    = bool
  default = false
}

variable "attach_waf_log_delivery_policy" {
  type    = bool
  default = false
}

variable "versioning_enabled" {
  type    = bool
  default = true
}

