provider "aws" {
  region = "ap-south-1"
}
# Create EBS volume with 29 GiB size
resource "aws_ebs_volume" "corporateproject_ebs" {
  availability_zone = var.availability_zone
  size              = var.volume_size         # 29 GB
  type              = var.volume_type
  encrypted         = var.encrypted

  tags = merge(var.tags, {
    Name = "corporateproject-ebs"
  })
}

# Attach EBS volume to EC2 instance
resource "aws_volume_attachment" "corporateproject_ebs_attach" {
  device_name = var.device_name               # Example: "/dev/sdf"
  volume_id   = aws_ebs_volume.corporateproject_ebs.id
  instance_id = var.instance_id
  force_detach = true
}

