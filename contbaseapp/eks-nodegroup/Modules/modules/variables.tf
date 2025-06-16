variable "cluster_name" {}
variable "node_group_name" {}
variable "node_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "desired_size" {
  type    = number
  default = 2
}
variable "max_size" {
  type    = number
  default = 4
}
variable "min_size" {
  type    = number
  default = 1
}
variable "instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}
variable "environment" {}

