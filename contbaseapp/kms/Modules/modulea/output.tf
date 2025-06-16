output "kms_key_id" {
  value       = module.corporateproject_kms.kms_key_id
  description = "KMS Key ID"
}

output "kms_key_arn" {
  value       = module.corporateproject_kms.kms_key_arn
  description = "KMS Key ARN"
}

