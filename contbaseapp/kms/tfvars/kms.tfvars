kms_key_alias           = "alias/corporateproject"
kms_description         = "KMS key for encrypting corporateproject resources"
kms_enable_key_rotation = true

kms_policy = <<EOF
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "AllowRootAccountFullAccess",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::123456789012:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
EOF

tags = {
  Environment = "dev"
  Project     = "corporateproject"
  Terraform   = "true"
}

