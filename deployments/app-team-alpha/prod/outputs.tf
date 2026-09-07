output "msapp1_fqdns" {
  description = "List of generated FQDNs for Team Alpha's msapp1 endpoints."
  value       = module.dns_records.msapp1_fqdns
}

output "msapp2_fqdns" {
  description = "List of generated FQDNs for Team Alpha's msapp2 endpoints."
  value       = module.dns_records.msapp2_fqdns
}

output "cname_fqdns" {
  description = "Map of static CNAME hostnames to their resulting FQDNs."
  value       = module.dns_records.cname_fqdns
}
