output "corporateproject_ebs_volume_id" {
  description = "The ID of the EBS volume created for corporateproject"
  value       = module.corporateproject_ebs.ebs_volume_id
}

output "corporateproject_ebs_volume_az" {
  description = "The AZ of the EBS volume"
  value       = module.corporateproject_ebs.ebs_volume_az
}

output "corporateproject_ebs_attachment_instance_id" {
  description = "The EC2 instance to which the EBS volume is attached"
  value       = module.corporateproject_ebs.ebs_attachment_instance_id
}

