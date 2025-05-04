# Hypervisor
resource "dns_a_record_set" "proxmox" {
    zone = "home.soniiit.net."
    name = "proxmox"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Backup Server
resource "dns_a_record_set" "pbs" {
    zone = "home.soniiit.net."
    name = "pbs"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Switch
resource "dns_a_record_set" "sw_01" {
    zone = "home.soniiit.net."
    name = "sw-01"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# NAS
resource "dns_a_record_set" "truenas" {
    zone = "home.soniiit.net."
    name = "truenas"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Docker Wildcard
resource "dns_a_record_set" "docker_srv_01_wildcard" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-01"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02_wildcard" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-02"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_03_wildcard" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-03"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Docker Containers
resource "dns_a_record_set" "kestra" {
    zone = "home.soniiit.net."
    name = "kestra"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# Kubernetes Containers
resource "dns_a_record_set" "traefik" {
    zone = "home.soniiit.net."
    name = "traefik"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "portainer" {
    zone = "home.soniiit.net."
    name = "portainer"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "prometheus" {
    zone = "home.soniiit.net."
    name = "prometheus"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "grafana" {
    zone = "home.soniiit.net."
    name = "grafana"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "alertmanager" {
    zone = "home.soniiit.net."
    name = "alertmanager"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "longhorn" {
    zone = "home.soniiit.net."
    name = "longhorn"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

resource "dns_a_record_set" "argocd" {
    zone = "home.soniiit.net."
    name = "argocd"
    addresses = [ "192.168.178.20" ]
    ttl = 3600
}

# LXC
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