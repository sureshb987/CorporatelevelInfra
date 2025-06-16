
variable "name" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "security_groups" {
  type = list(string)
}

variable "instances" {
  type = list(string)
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
  type    = map(string)
  default = {}
}
