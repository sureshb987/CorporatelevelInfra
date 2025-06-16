availability_zone = "ap-south-1a"
volume_size       = 29
volume_type       = "gp3"
encrypted         = true
device_name       = "/dev/sdf"
instance_id       = "i-0123456789abcdef0"

tags = {
  Project     = "corporateproject"
  Environment = "dev"
  Terraform   = "true"
}

