name           = "corporateproject-efs"
subnet_ids         = ["subnet-0c5c788e4db5417f7",
  "subnet-0023a3181c61e2e56"]
security_group_id  = "sg-0192ad3bbaf6db2fd"

performance_mode   = "generalPurpose"
throughput_mode    = "bursting"

tags = {
  Environment = "dev"
  Project     = "corporateproject"
  Terraform   = "true"
}
