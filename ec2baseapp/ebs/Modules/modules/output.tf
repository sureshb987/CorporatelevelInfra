output "ebs_volume_id" {
  description = "ID of the corporateproject EBS volume"
  value       = aws_ebs_volume.corporateproject_ebs.id
}
output "ebs_volume_az" {
  description = "The Availability Zone of the EBS volume"
  value       = aws_ebs_volume.corporateproject_ebs.availability_zone
}

output "ebs_attachment_instance_id" {
  description = "The EC2 instance ID to which the volume is attached"
  value       = aws_volume_attachment.corporateproject_ebs_attach.instance_id
}
