variable "availability_zone" {
  type = string
}
variable "volume_size" {
  type    = number
  default = 29
}
variable "volume_type" {
  type    = string
  default = "gp3"
}
variable "encrypted" {
  type    = bool
  default = true
}
variable "device_name" {
  type    = string
}
variable "instance_id" {
  type = string
}
variable "tags" {
  type    = map(string)
  default = {}
}

