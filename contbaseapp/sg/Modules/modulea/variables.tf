variable "sg_name" {
  type        = string
  default     = "corporateproject-sg"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID to associate with the security group"
}

variable "sg_description" {
  type        = string
  default     = "Security group for corporateproject"
}

variable "ingress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "tags" {
  type        = map(string)
  default     = {}
}

