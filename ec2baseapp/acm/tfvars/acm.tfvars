domain_name = "dev.corporateproject.com"
subject_alternative_names = [
  "www.dev.corporateproject.com"
]
validation_method = "DNS"
zone_id = "Z123456ABCDEFG" # Replace with actual Route 53 zone ID

tags = {
  Terraform  = "true"
  Environment = "dev"
}

