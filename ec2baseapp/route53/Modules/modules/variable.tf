variable "domain_name" {
  description = "The domain name for the hosted zone"
  type        = string
}

variable "record_name" {
  description = "The DNS record name (e.g., www, api, or root '@')"
  type        = string
}

variable "a_record_ip" {
  description = "The IP address to associate with the A record"
  type        = string
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}

