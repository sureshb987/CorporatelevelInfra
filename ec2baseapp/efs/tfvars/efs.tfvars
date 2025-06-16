efs_name           = "corporateproject-efs"
subnet_ids         = ["subnet-1234abcd", "subnet-5678efgh"]
security_group_id  = "sg-0a1b2c3d4e5f6g7h8"

performance_mode   = "generalPurpose"
throughput_mode    = "bursting"

tags = {
  Environment = "dev"
  Project     = "corporateproject"
  Terraform   = "true"
}

