region              = "ap-south-1"
vpc_name = "corporateproject-vpc"
vpc_cidr = "10.0.0.0/16"

availability_zones = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

enable_nat_gateway = true
single_nat_gateway = false
reuse_nat_ips      = true
external_nat_ip_ids = ["eip-12345678", "eip-87654321", "eip-11223344"] # Example EIP IDs

enable_vpn_gateway = true

tags = {
  Terraform  = "true"
  Environment = "dev"
}

