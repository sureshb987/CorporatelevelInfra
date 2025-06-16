provider "aws" {
  region = ap-south-1
}
module "corporateproject_eks_nodegroup" {
  source           = "../../modules/eks-nodegroup"
  cluster_name     = module.corporateproject_eks_cluster.cluster_name
  node_group_name  = "corporateproject-nodegroup"
  node_role_arn    = var.node_role_arn
  subnet_ids       = var.private_subnet_ids
  desired_size     = 2
  max_size         = 4
  min_size         = 1
  instance_types   = ["t3.medium"]
  environment      = var.environment
}
