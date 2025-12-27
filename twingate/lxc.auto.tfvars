lxc_resources = {
  "lxc_bind9" = {
    name       = "lxc-bind9"
    address    = "192.168.178.3"
    alias      = "lxc-bind9.home.soniiit.net"
    ports      = ["22", "53"]
    udp_policy = "RESTRICTED"
    udp_ports  = ["53"]
  }
  "lxc_cloudflared" = {
    name    = "lxc-cloudflared"
    address = "192.168.178.43"
    alias   = "lxc-cloudflared.home.soniiit.net"
    ports   = ["22"]
  }
  "lxc_nextcloud" = {
    name    = "lxc-nextcloud"
    address = "192.168.178.47"
    alias   = "lxc-nextcloud.home.soniiit.net"
    ports   = ["22"]
  }
}
