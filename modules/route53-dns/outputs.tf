output "msapp1_fqdns" {
  description = "List of created msapp1 FQDNs."
  value       = [for r in aws_route53_record.msapp1-app : r.fqdn]
}

output "msapp2_fqdns" {
  description = "List of created msapp2 FQDNs."
  value       = [for r in aws_route53_record.msapp2-app : r.fqdn]
}

output "cname_fqdns" {
  description = "Map of created CNAME record FQDNs."
  value       = { for k, r in aws_route53_record.cname-records : k => r.fqdn }
}
