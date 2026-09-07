resource "aws_route53_record" "msapp1-app" {
  for_each = {
    for cluster in local.msapp1_app_external_name : cluster.msapp1 => cluster
  }

  zone_id         = var.zone_id
  name            = each.value.msapp1
  type            = "CNAME"
  records         = [each.value.record]
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "msapp2-app" {
  for_each = {
    for cluster in local.msapp2_app_external_name : cluster.msapp2 => cluster
  }

  zone_id         = var.zone_id
  name            = each.value.msapp2
  type            = "CNAME"
  records         = [each.value.record]
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "a-records" {
  for_each        = var.a_records
  zone_id         = var.zone_id
  name            = each.key
  type            = "A"
  records         = each.value
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "cname-records" {
  for_each        = var.cname_records
  zone_id         = var.zone_id
  name            = each.key
  type            = "CNAME"
  records         = each.value
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "txt-records" {
  for_each        = var.txt_records
  zone_id         = var.zone_id
  name            = each.key
  type            = "TXT"
  records         = each.value
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "mx-records" {
  for_each        = var.mx_records
  zone_id         = var.zone_id
  name            = each.key
  type            = "MX"
  records         = each.value
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "srv-records" {
  for_each        = var.srv_records
  zone_id         = var.zone_id
  name            = each.key
  type            = "SRV"
  records         = each.value
  ttl             = var.ttl
  allow_overwrite = true
}

resource "aws_route53_record" "alias-records" {
  for_each = var.alias_records
  zone_id  = var.zone_id
  name     = each.key
  type     = each.value.type

  alias {
    name                   = each.value.record
    zone_id                = each.value.zone_id
    evaluate_target_health = true
  }

  allow_overwrite = true
}
