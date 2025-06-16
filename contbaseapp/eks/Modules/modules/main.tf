provider "aws" {
  region = "ap-south-1"
}
resource "aws_eks_cluster" "corporateproject_eks" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  version = var.kubernetes_version

  tags = {
    Name        = "corporateproject-eks-cluster"
    Environment = var.environment
  }
}

