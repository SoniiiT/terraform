# Hier sind die A-Records für die Services die über den Reverse Proxy eingerichtet werden

# Hypervisor
resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# Backup Server
resource "dns_a_record_set" "pbs" {
    zone = "home.soniiit.net."
    name = "pbs"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# Switch
resource "dns_a_record_set" "sw_01" {
    zone = "home.soniiit.net."
    name = "sw-01"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# Adguard
resource "dns_a_record_set" "adguard" {
    zone = "home.soniiit.net."
    name = "adguard"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# NAS
resource "dns_a_record_set" "truenas" {
    zone = "home.soniiit.net."
    name = "truenas"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# Docker Containers
resource "dns_a_record_set" "kestra" {
    zone = "home.soniiit.net."
    name = "kestra"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "homepage" {
    zone = "home.soniiit.net."
    name = "homepage"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "n8n" {
    zone = "home.soniiit.net."
    name = "n8n"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "traefik" {
    zone = "home.soniiit.net."
    name = "traefik"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "wud" {
    zone = "home.soniiit.net."
    name = "wud"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "portainer" {
    zone = "home.soniiit.net."
    name = "portainer"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "uptimekuma" {
    zone = "home.soniiit.net."
    name = "uptimekuma"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# Jellifin
resource "dns_a_record_set" "jellyfin" {
    zone = "home.soniiit.net."
    name = "jellyfin"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "jellyfin_vue" {
    zone = "home.soniiit.net."
    name = "jellyfin-vue"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "sonarr" {
    zone = "home.soniiit.net."
    name = "sonarr"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "radarr" {
    zone = "home.soniiit.net."
    name = "radarr"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "prowlarr" {
    zone = "home.soniiit.net."
    name = "prowlarr"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "qbittorrent" {
    zone = "home.soniiit.net."
    name = "qbittorrent"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

resource "dns_a_record_set" "jellyseerr" {
    zone = "home.soniiit.net."
    name = "jellyseerr"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}

# LXC
resource "dns_a_record_set" "wazuh" {
    zone = "home.soniiit.net."
    name = "wazuh"
    addresses = [ "192.168.178.32" ]
    ttl = 3600
}
