resource "dns_a_record_set" "app-srv-01" {
    zone = "home.soniiit.net."
    name = "app-srv-01"
    addresses = [ "192.168.178.80" ]
    ttl = 3600
}

resource "dns_a_record_set" "app-srv-02" {
    zone = "home.soniiit.net."
    name = "app-srv-02"
    addresses = [ "192.168.178.81" ]
    ttl = 3600
}