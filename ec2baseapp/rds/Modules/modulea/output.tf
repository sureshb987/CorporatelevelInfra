output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = module.CorporateProject_rds.db_instance_endpoint
}

output "rds_db_name" {
  description = "RDS database name"
  value       = module.CorporateProject_rds.db_instance_name
}

output "rds_username" {
  description = "RDS master username"
  value       = module.CorporateProject_rds.db_instance_username
}

