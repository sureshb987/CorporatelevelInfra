variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM role ARN for the EKS control plane"
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Kubernetes version to use"
  type        = string
  default     = "1.32"
}

variable "environment" {
  description = "Environment tag (dev, staging, prod)"
  type        = string
}

