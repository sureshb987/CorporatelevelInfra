output "elb_dns_name" {
  value       = module.corporateproject_elb.elb_dns_name
  description = "DNS name of the ELB"
}

