provider "aws" {
  region = "ap-south-1"
}
resource "aws_efs_file_system" "corporateproject" {
  creation_token    = var.name
  performance_mode  = var.performance_mode
  throughput_mode   = var.throughput_mode

  tags = merge(var.tags, {
    Name = var.name
  })
}

resource "aws_efs_mount_target" "corporateproject" {
  count           = length(var.subnet_ids)
  file_system_id  = aws_efs_file_system.corporateproject.id
  subnet_id       = var.subnet_ids[count.index]
  security_groups = [var.security_group_id]
}

