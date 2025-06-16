variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = []
}

variable "project_name" {
  description = "Name of the project for tagging"
  type        = string
  default     = "CorporateProject"
}

variable "rds_allowed_cidr_blocks" {
  description = "CIDR blocks allowed to access RDS"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Adjust for security in production
}

variable "postgres_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "17.4"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.medium"
}

variable "allocated_storage" {
  description = "Storage size for RDS in GB"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "corporateproject_db"
}

variable "db_username" {
  description = "Username for the database"
  type        = string
  default     = "pgadmin"
}

variable "db_password" {
  description = "Password for the database"
  type        = string
  default     = "Test123!" # Use secrets manager in production
}

