output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = aws_db_instance.corporateproject_postgres.endpoint
}

output "rds_db_name" {
  description = "Name of the database"
  value       = aws_db_instance.corporateproject_postgres.db_name
}

