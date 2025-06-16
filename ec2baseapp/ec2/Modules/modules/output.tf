output "server_ssh_access" {
  value = "${var.ssh_user}@${aws_instance.corporateproject_ec2.public_ip}"
}

output "public_ip" {
  value = aws_instance.corporateproject_ec2.public_ip
}

output "private_ip" {
  value = aws_instance.corporateproject_ec2.private_ip
}
output "target_group_arn" {
  description = "ARN of the created target group"
  value       = aws_lb_target_group.corporateproject_tg.arn
}

output "launch_template_id" {
  description = "ID of the created launch template"
  value       = aws_launch_template.corporateproject_lt.id
}

output "launch_template_name" {
  description = "Name of the launch template"
  value       = aws_launch_template.corporateproject_lt.name
}
