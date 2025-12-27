docker_resources = {
  "docker-srv-01" = {
    name    = "docker-srv-01"
    address = "192.168.178.30"
    alias   = "docker-srv-01.home.soniiit.net"
  }
  "docker-srv-01-wildcard" = {
    name       = "docker-srv-01-wildcard"
    address    = "*.docker-srv-01.home.soniiit.net"
    tcp_policy = "ALLOW_ALL"
    udp_policy = "ALLOW_ALL"
  }
  "docker-srv-02" = {
    name    = "docker-srv-02"
    address = "192.168.178.31"
    alias   = "docker-srv-02.home.soniiit.net"
  }
  "docker-srv-02-wildcard" = {
    name       = "docker-srv-02-wildcard"
    address    = "*.docker-srv-02.home.soniiit.net"
    tcp_policy = "ALLOW_ALL"
    udp_policy = "ALLOW_ALL"
  }
  "docker-srv-03" = {
    name    = "docker-srv-03"
    address = "192.168.178.32"
    alias   = "docker-srv-03.home.soniiit.net"
  }
  "docker-srv-03-wildcard" = {
    name       = "docker-srv-03-wildcard"
    address    = "*.docker-srv-03.home.soniiit.net"
    tcp_policy = "ALLOW_ALL"
    udp_policy = "ALLOW_ALL"
  }
}
