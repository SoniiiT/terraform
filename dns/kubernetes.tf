# Virtual IP
resource "dns_a_record_set" "k3s_soniiit_prod1_vip" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-vip"
    addresses = [ "192.168.178.10" ]
    ttl = 3600
}

# Servers
resource "dns_a_record_set" "k3s_soniiit_prod1_server01" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-server01"
    addresses = [ "192.168.178.11" ]
    ttl = 3600
}

# Agents
resource "dns_a_record_set" "k3s_soniiit_prod1_agent01" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-agent01"
    addresses = [ "192.168.178.12" ]
    ttl = 3600
}

# Containers
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
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "grafana" {
    zone = "home.soniiit.net."
    name = "grafana"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "alertmanager" {
    zone = "home.soniiit.net."
    name = "alertmanager"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "longhorn" {
    zone = "home.soniiit.net."
    name = "longhorn"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}
