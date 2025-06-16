

variable "cidr_block" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "azs" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}
