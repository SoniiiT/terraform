/* # Hier sind die A-Records für das Home Network

# Home Network
resource "dns_a_record_set" "gw_01" {
    zone = "home.soniiit.net."
    name = "gw-01"
    addresses = [ "192.168.178.1" ]
    ttl = 3600
}

resource "dns_a_record_set" "gw_02" {
    zone = "home.soniiit.net."
    name = "gw-02"
    addresses = [ "192.168.178.2" ]
    ttl = 3600
}

# Hypervisor
resource "dns_a_record_set" "pve-srv-01" {
    zone = "home.soniiit.net."
    name = "pve-srv-01"
    addresses = [ "192.168.178.6" ]
    ttl = 3600
}

# Backup Server
resource "dns_a_record_set" "pbs_backup_01" {
    zone = "home.soniiit.net."
    name = "pbs-backup-01"
    addresses = [ "192.168.178.5" ]
    ttl = 3600
}

# Twingate Connector Hosts
resource "dns_a_record_set" "twingate_connector_01" {
    zone = "home.soniiit.net."
    name = "tg-cn-01"
    addresses = [ "192.168.178.7" ]
    ttl = 3600
}

# Home
resource "dns_a_record_set" "jellyfin-home-01" {
    zone = "home.soniiit.net."
    name = "jellyfin-home-01"
    addresses = [ "192.168.178.98" ]
    ttl = 3600
} */