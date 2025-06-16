db_identifier        = "corporateproject-postgresql"
engine_version       = "15.3"
instance_class       = "db.t3.medium"
allocated_storage    = 20
storage_type         = "gp2"
db_name              = "CorporateProject_db"
db_username          = "admin"
db_password          = "StrongPassword123!" # Replace via environment or secret store

vpc_id               = "vpc-xxxxxxx"
subnet_ids           = ["subnet-aaaa", "subnet-bbbb", "subnet-cccc"]
publicly_accessible  = false

tags = {
  Environment = "dev"
  Project     = "CorporateProject"
  Terraform   = "true"
}

