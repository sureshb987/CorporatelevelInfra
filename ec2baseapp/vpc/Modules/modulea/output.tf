output "vpc_id" {
  value       = module.corporateproject_vpc.vpc_id
  description = "ID of the VPC"
}

output "private_subnet_ids" {
  value       = module.corporateproject_vpc.private_subnets
  description = "Private subnet IDs"
}

output "public_subnet_ids" {
  value       = module.corporateproject_vpc.public_subnets
  description = "Public subnet IDs"
}

output "nat_gateway_ids" {
  value       = module.corporateproject_vpc.nat_gateway_ids
  description = "NAT Gateway IDs"
}

