module "dns_records" {
  source = "../../../modules/route53-dns"

  zone_id       = var.zone_id
  env_prefix    = var.env_prefix
  clusters      = var.clusters
  cname_records = var.cname_records
  a_records     = var.a_records
  txt_records   = var.txt_records
  mx_records    = var.mx_records
  srv_records   = var.srv_records
  alias_records = var.alias_records
}
