resource "dns_a_record_set" "runners" {
  for_each = var.runner_records

  zone      = var.dns_zone
  name      = each.value.name
  addresses = each.value.addresses
  ttl       = coalesce(each.value.ttl, var.dns_ttl)
}
