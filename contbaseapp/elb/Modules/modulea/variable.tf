variable "elb_name" {
  type        = string
  default     = "corporateproject-elb"
}

variable "subnets" {
  type        = list(string)
  description = "Subnets for ELB"
}

variable "security_groups" {
  type        = list(string)
  description = "Security groups for ELB"
}

variable "instances" {
  type        = list(string)
  description = "EC2 instance IDs to attach to ELB"
}

variable "listener" {
  type = list(object({
    instance_port     = number
    instance_protocol = string
    lb_port           = number
    lb_protocol       = string
  }))
}

variable "health_check" {
  type = object({
    target              = string
    interval            = number
    timeout             = number
    healthy_threshold   = number
    unhealthy_threshold = number
  })
}

variable "tags" {
  type        = map(string)
  default     = {}
}

