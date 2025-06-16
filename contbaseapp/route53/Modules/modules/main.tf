provider "aws" {
  region = "ap-south-1"
}
resource "aws_route53_zone" "corporateproject_zone" {
  name = var.domain_name

  tags = merge(var.tags, {
    Name = "corporateproject-hosted-zone"
  })
}

resource "aws_route53_record" "corporateproject_a_record" {
  zone_id = aws_route53_zone.corporateproject_zone.zone_id
  name    = var.record_name
  type    = "A"
  ttl     = 300
  records = [var.a_record_ip]
}

