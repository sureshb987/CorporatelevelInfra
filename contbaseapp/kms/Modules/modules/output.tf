output "kms_key_id" {
  value       = aws_kms_key.corporateproject.key_id
  description = "KMS Key ID"
}

output "kms_key_arn" {
  value       = aws_kms_key.corporateproject.arn
  description = "KMS Key ARN"
}

