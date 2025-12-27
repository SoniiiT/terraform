resource "dns_a_record_set" "dev" {
  for_each = var.dev_records

  zone      = var.dev_dns_zone
  name      = each.value.name
  addresses = each.value.addresses
  ttl       = coalesce(each.value.ttl, var.dns_ttl)
}
