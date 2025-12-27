resource "dns_a_record_set" "home" {
  for_each = var.home_records

  zone      = var.dns_zone
  name      = each.value.name
  addresses = each.value.addresses
  ttl       = coalesce(each.value.ttl, var.dns_ttl)
}
