# Game Server A Record
resource "cloudflare_dns_record" "minecraft_gme_a" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "gme.soniiit.net"
  content = "116.203.182.97"
  type    = "A"
  proxied = false
  ttl = 3600
  comment = "Created and Managed by Terraform"
}
resource "cloudflare_dns_record" "minecraft_mc_a" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "mc.soniiit.net"
  content = "116.203.182.97"
  type    = "A"
  proxied = false
  ttl = 3600
  comment = "Created and Managed by Terraform"
}