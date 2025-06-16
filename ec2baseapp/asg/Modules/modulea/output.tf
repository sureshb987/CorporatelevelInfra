output "asg_name" {
  value       = module.corporateproject_asg.asg_name
  description = "Auto Scaling Group name"
}

output "asg_arn" {
  value       = module.corporateproject_asg.asg_arn
  description = "Auto Scaling Group ARN"
}

