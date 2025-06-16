db_identifier        = "corporateproject-postgresql"
engine_version       = "15"
instance_class       = "db.t3.medium"
allocated_storage    = 20
storage_type         = "gp2"
db_name              = "CorporateProject_db"
db_username          = "dbmaster"
db_password          = "Test123!" # Replace via environment or secret store
db_subnet_group_name  = "corporateproject-db-subnet-group"
postgres_version      = "15"
#engine_version = "15"
project_name          = "corporateproject"
security_group_ids    = ["sg-0192ad3bbaf6db2fd"]
vpc_id               = "vpc-0f4ce7cea05eb22e1"
rds_allowed_cidr_blocks = ["10.0.0.0/16"]
subnet_ids           = [
  "subnet-0c5c788e4db5417f7",
  "subnet-0023a3181c61e2e56",
  "subnet-05e11d57abee7e2ee",
]
publicly_accessible  = false

tags = {
  Environment = "dev"
  Project     = "CorporateProject"
  Terraform   = "true"
}
