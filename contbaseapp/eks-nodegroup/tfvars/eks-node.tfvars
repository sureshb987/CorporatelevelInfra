cluster_name     = "corporateproject-eks"
node_group_name  = "corporateproject-nodegroup"
node_role_arn    = "arn:aws:iam::123456789012:role/EKSNodeGroupRole"
subnet_ids       = ["subnet-abc", "subnet-def", "subnet-ghi"]
desired_size     = 2
max_size         = 4
min_size         = 1
instance_types   = ["t3.medium"]
environment      = "dev"

