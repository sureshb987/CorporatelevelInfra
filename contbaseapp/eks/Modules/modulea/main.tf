provider "aws" {
  region = ap-south-1
}
module "corporateproject_eks_cluster" {
  source              = "../../modules/eks-cluster"
  cluster_name        = "corporateproject-eks"
  cluster_role_arn    = var.cluster_role_arn
  subnet_ids          = var.private_subnet_ids
  environment         = var.environment
  kubernetes_version  = "1.32"
}
