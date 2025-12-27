resource "dns_a_record_set" "demo" {
  for_each = var.demo_records

  zone      = var.demo_dns_zone
  name      = each.value.name
  addresses = each.value.addresses
  ttl       = coalesce(each.value.ttl, var.dns_ttl)
}
