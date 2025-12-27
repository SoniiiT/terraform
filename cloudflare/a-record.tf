resource "cloudflare_dns_record" "a_record" {
  for_each = var.a_records

  zone_id = var.soniiit_net_cloudflare_zone_id
  name    = each.value.name
  content = each.value.content
  type    = "A"
  proxied = each.value.proxied
  ttl     = each.value.ttl
  comment = "Created and Managed by Terraform"
}
