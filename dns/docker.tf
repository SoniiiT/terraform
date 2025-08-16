# Hier sind die A-Records für die Docker Hosts

# Hosts
resource "dns_a_record_set" "docker_srv_01" {
    zone = "home.soniiit.net."
    name = "docker-srv-01"
    addresses = [ "192.168.178.30" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02" {
    zone = "home.soniiit.net."
    name = "docker-srv-02"
    addresses = [ "192.168.178.31" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_03" {
    zone = "home.soniiit.net."
    name = "docker-srv-03"
    addresses = [ "192.168.178.32" ]
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
