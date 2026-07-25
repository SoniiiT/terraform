resource "dns_a_record_set" "mcp" {
  for_each = var.mcp_records

  zone      = var.mcp_dns_zone
  name      = each.value.name
  addresses = each.value.addresses
  ttl       = coalesce(each.value.ttl, var.dns_ttl)
}

resource "dns_cname_record" "mcp" {
  for_each = var.mcp_cname_records

  zone  = var.mcp_dns_zone
  name  = each.value.name
  cname = each.value.cname
  ttl   = coalesce(each.value.ttl, var.dns_ttl)
}
