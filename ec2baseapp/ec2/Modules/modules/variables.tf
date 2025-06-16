

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name of the project for tagging"
  type        = string
  default     = "CorporateProject"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "security_group_name" {
  description = "Name of the security group for Jenkins server"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0b09627181c8d5778"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "Healthcare"
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 29
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Jenkins_Server"
}

variable "private_key_path" {
  description = "Path to the private key file for SSH access"
  type        = string
  default     = "./Healthcare.pem"
}

variable "ssh_user" {
  description = "SSH user for the EC2 instance"
  type        = string
  default     = "ubuntu"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instance"
  type        = list(string)
}

variable "associate_public_ip" {
  description = "Associate a public IP address with the EC2 instance"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Common tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "CorporateProject"
  }
}
variable "vpc_id" {
  type        = string
}
