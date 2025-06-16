output "hosted_zone_id" {
  value       = aws_route53_zone.corporateproject_zone.zone_id
  description = "Route53 Hosted Zone ID"
}

output "record_fqdn" {
  value       = aws_route53_record.corporateproject_a_record.fqdn
  description = "Fully qualified domain name of the A record"
}

