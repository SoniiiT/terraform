# Hier sind die A-Records für das Kubernetes Cluster

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

resource "dns_a_record_set" "k3s_soniiit_prod1_agent02" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-agent02"
    addresses = [ "192.168.178.13" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_prod1_agent03" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-agent03"
    addresses = [ "192.168.178.14" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_prod1_agent04" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-agent04"
    addresses = [ "192.168.178.15" ]
    ttl = 3600
}

resource "dns_a_record_set" "k3s_soniiit_prod1_agent05" {
    zone = "home.soniiit.net."
    name = "k3s-soniiit-prod1-agent05"
    addresses = [ "192.168.178.16" ]
    ttl = 3600
}
