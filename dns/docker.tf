# Servers
resource "dns_a_record_set" "docker_srv_01" {
    zone = "home.soniiit.net."
    name = "docker-srv-01"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_01_wildcard" {
    zone = "home.soniiit.net."
    name = "*.docker-srv-01"
    addresses = [ "192.168.178.40" ]
    ttl = 3600
}

resource "dns_a_record_set" "docker_srv_02" {
    zone = "home.soniiit.net."
    name = "docker-srv-02"
    addresses = [ "192.168.178.42" ]
    ttl = 3600
}

# Containers
