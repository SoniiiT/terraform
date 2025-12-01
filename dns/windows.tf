# Domain Controller
resource "dns_a_record_set" "dc_srv_01" {
    zone = "home.soniiit.net."
    name = "dc-srv-01"
    addresses = [ "192.168.178.90" ]
    ttl = 3600
}

resource "dns_a_record_set" "dc_srv_02" {
    zone = "home.soniiit.net."
    name = "dc-srv-02"
    addresses = [ "192.168.178.91" ]
    ttl = 3600
}