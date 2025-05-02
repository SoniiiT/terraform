# Minecraft Vanilla Server SRV Record
resource "cloudflare_dns_record" "minecraft_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.mc"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "mc"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26000       # Der Port des Minecraft Servers
    target   = "mc.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Minecraft Vanilla Server SRV Record"
}