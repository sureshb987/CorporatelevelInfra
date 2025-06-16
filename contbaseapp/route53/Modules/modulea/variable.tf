variable "domain_name" {
  description = "Domain name for Route53 hosted zone"
  type        = string
}

variable "record_name" {
  description = "Record name for the A record"
  type        = string
}

variable "a_record_ip" {
  description = "Public IP for A record"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

