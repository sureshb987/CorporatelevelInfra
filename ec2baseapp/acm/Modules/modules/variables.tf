variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}
variable "domain_name" {
  type        = string
  description = "Primary domain name for the ACM certificate"
}

variable "subject_alternative_names" {
  type        = list(string)
  default     = []
  description = "List of SANs (e.g., www.example.com)"
}

variable "validation_method" {
  type        = string
  default     = "DNS"
  description = "Validation method for ACM: DNS or EMAIL"
}

variable "zone_id" {
  type        = string
  description = "Route53 Hosted Zone ID for DNS validation"
}

variable "tags" {
  type        = map(string)
  description = "Tags for ACM certificate"
}

