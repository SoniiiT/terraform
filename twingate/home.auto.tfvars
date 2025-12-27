home_resources = {
  "wildcard_dns_home" = {
    name       = "Wildcard Home"
    address    = "*.home.soniiit.net"
    tcp_policy = "ALLOW_ALL"
    udp_policy = "ALLOW_ALL"
  }
  "pve_srv_01" = {
    name    = "pve-srv-01"
    address = "192.168.178.6"
    alias   = "pve-srv-01.home.soniiit.net"
    ports   = ["22", "8006"]
  }
  "pbs_bak_01" = {
    name    = "pbs-bak-01"
    address = "192.168.178.5"
    alias   = "pbs-bak-01.home.soniiit.net"
    ports   = ["22", "8007"]
  }
}
