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

resource "dns_a_record_set" "sw_01" {
    zone = "home.soniiit.net."
    name = "sw-01"
    addresses = [ "192.168.178.210" ]
    ttl = 3600
}

# Hosts
resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Twingate Connector Hosts
resource "dns_a_record_set" "twingate_connector_01" {
    zone = "home.soniiit.net."
    name = "tg-cn-01"
    addresses = [ "192.168.178.7" ]
    ttl = 3600
}

# NAS

resource "dns_a_record_set" "truenas" {
    zone = "home.soniiit.net."
    name = "truenas"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Reverse Proxy
resource "dns_a_record_set" "wazuh" {
    zone = "home.soniiit.net."
    name = "wazuh"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "checkmk" {
    zone = "home.soniiit.net."
    name = "checkmk"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "pihole" {
    zone = "home.soniiit.net."
    name = "pihole"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}