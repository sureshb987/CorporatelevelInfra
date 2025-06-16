variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of AZs"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDRs"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDRs"
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Whether to enable NAT Gateway"
  default     = true
}

variable "single_nat_gateway" {
  type        = bool
  description = "Whether to use a single NAT Gateway"
  default     = false
}

variable "reuse_nat_ips" {
  type        = bool
  description = "Whether to reuse existing EIPs"
  default     = false
}

variable "external_nat_ip_ids" {
  type        = list(string)
  description = "List of EIP IDs for NAT Gateways"
  default     = []
}

variable "enable_vpn_gateway" {
  type        = bool
  description = "Whether to enable VPN Gateway"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
}

