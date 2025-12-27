resource "cloudflare_dns_record" "srv_record" {
  for_each = var.srv_records

  zone_id = var.soniiit_net_cloudflare_zone_id
  name    = "${each.value.service}.${each.value.proto}.${each.value.name}"
  type    = "SRV"
  data = {
    service  = each.value.service
    proto    = each.value.proto
    name     = each.value.name
    priority = each.value.priority
    weight   = each.value.weight
    port     = each.value.port
    target   = each.value.target
  }
  ttl     = 1 # Auto TTL
  comment = "Created and Managed by Terraform"
}
