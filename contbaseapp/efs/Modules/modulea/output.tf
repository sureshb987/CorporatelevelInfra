output "efs_id" {
  value       = module.corporateproject_efs.efs_id
  description = "EFS ID"
}

output "efs_dns_names" {
  value       = module.corporateproject_efs.efs_dns_names
  description = "EFS DNS names across AZs"
}

