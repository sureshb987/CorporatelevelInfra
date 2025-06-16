output "asg_name" {
  value       = aws_autoscaling_group.corporateproject.name
  description = "Name of the Auto Scaling Group"
}

output "asg_arn" {
  value       = aws_autoscaling_group.corporateproject.arn
  description = "ARN of the Auto Scaling Group"
}

