variable "domain_name" {
  type        = string
  description = "Primary domain name for the ACM certificate"
}

variable "subject_alternative_names" {
  type        = list(string)
  description = "List of SANs (e.g., www.example.com)"
  default     = []
}

variable "validation_method" {
  type        = string
  description = "Validation method (DNS or EMAIL)"
  default     = "DNS"
}

variable "zone_id" {
  type        = string
  description = "Route 53 Hosted Zone ID for DNS validation"
}

variable "tags" {
  type        = map(string)
  description = "Tags to associate with ACM"
}
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}
