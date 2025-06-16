provider "aws" {
  region = "ap-south-1"
}
resource "aws_acm_certificate" "corporateproject" {
  domain_name               = var.domain_name
  validation_method         = var.validation_method
  subject_alternative_names = var.subject_alternative_names
  tags                      = var.tags

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "corporateproject" {
  count = var.validation_method == "DNS" ? length(aws_acm_certificate.this.domain_validation_options) : 0

  zone_id = var.zone_id
  name    = aws_acm_certificate.this.domain_validation_options[count.index].resource_record_name
  type    = aws_acm_certificate.this.domain_validation_options[count.index].resource_record_type
  records = [aws_acm_certificate.this.domain_validation_options[count.index].resource_record_value]
  ttl     = 60
}

resource "aws_acm_certificate_validation" "this" {
  count = var.validation_method == "DNS" ? 1 : 0

  certificate_arn         = aws_acm_certificate.this.arn
  validation_record_fqdns = [for record in aws_route53_record.this : record.fqdn]
}

