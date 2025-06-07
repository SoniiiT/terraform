# Minecraft Vanilla Server SRV Record
resource "cloudflare_dns_record" "minecraft_vanilla_srv" {
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
  comment = "Created and Managed by Terraform"
}

# Minecraft Life in the Village 3 Server SRV Record
resource "cloudflare_dns_record" "minecraft_litv3_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.litv3"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "litv3"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26001       # Der Port des Minecraft Servers
    target   = "litv3.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}

# Minecraft BM: Exosphere Server SRV Record
resource "cloudflare_dns_record" "minecraft_bme_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.bme"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "bme"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26003       # Der Port des Minecraft Servers
    target   = "bme.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}

# Minecraft Reign of Nether RTS Server SRV Record
resource "cloudflare_dns_record" "minecraft_rts_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.rts"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "rts"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26004       # Der Port des Minecraft Servers
    target   = "rts.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}

# Minecraft Craft to Exile 2 Server SRV Record
resource "cloudflare_dns_record" "minecraft_ce2_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.ce2"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "ce2"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26005       # Der Port des Minecraft Servers
    target   = "ce2.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}

# Minecraft Create: Ultimate Selection Server SRV Record
resource "cloudflare_dns_record" "minecraft_create_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.create"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "create"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26006       # Der Port des Minecraft Servers
    target   = "create.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}

# Minecraft Life in the Village 4 Selection Server SRV Record
resource "cloudflare_dns_record" "minecraft_litv4_srv" {
  zone_id = "4ec5c5258e769e7f6d96ba75c3ef514a"
  name    = "_minecraft._tcp.litv4"  # Der Service und Protokoll
  type    = "SRV"
  data = {
    service  = "_minecraft"
    proto    = "_tcp"
    name     = "litv4"  # Der Name des Eintrags
    priority = 0
    weight   = 0
    port     = 26008       # Der Port des Minecraft Servers
    target   = "litv4.soniiit.net"  # Der Zielhost
  }
  ttl = 1  # Auto TTL
  comment = "Created and Managed by Terraform"
}
