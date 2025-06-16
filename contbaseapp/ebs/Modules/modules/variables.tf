variable "availability_zone" {
  description = "Availability zone for the EBS volume (must match EC2 instance AZ)"
  type        = string
}

variable "volume_size" {
  description = "Size of the EBS volume in GiB"
  type        = number
  default     = 29
}

variable "volume_type" {
  description = "EBS volume type (e.g., gp2, gp3, io1)"
  type        = string
  default     = "gp3"
}

variable "encrypted" {
  description = "Whether the EBS volume should be encrypted"
  type        = bool
  default     = true
}

variable "device_name" {
  description = "The device name for attachment (e.g., /dev/sdf)"
  type        = string
  default     = "/dev/sdf"
}

variable "instance_id" {
  description = "ID of the EC2 instance to attach this volume"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the EBS volume"
  type        = map(string)
  default     = {}
}

