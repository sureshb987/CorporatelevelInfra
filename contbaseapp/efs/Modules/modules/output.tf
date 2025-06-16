output "efs_id" {
  value       = aws_efs_file_system.corporateproject.id
  description = "ID of the EFS file system"
}

output "efs_dns_names" {
  value = [
    for mt in aws_efs_mount_target.corporateproject :
    "fs-${aws_efs_file_system.corporateproject.id}.efs.${mt.availability_zone_name}.amazonaws.com"
  ]
  description = "List of EFS DNS names"
}

