name        = "corporateproject-sg"
vpc_id         = "vpc-0f4ce7cea05eb22e1"
description = "Allow all TCP, SSH, and outbound traffic"

ingress_rules = [
  {
    description = "Allow all TCP"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tags = {
  Environment = "dev"
  Project     = "corporateproject"
  Terraform   = "true"
}
