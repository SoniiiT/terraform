k8s_resources = {
  "k3s_soniiit_prod1_vip" = {
    name    = "k3s-soniiit-prod1-vip"
    address = "192.168.178.10"
    alias   = "k3s-soniiit-prod1-vip.home.soniiit.net"
    ports   = ["6443"]
  }
  "k3s_soniiit_prod1_server01" = {
    name    = "k3s-soniiit-prod1-server01"
    address = "192.168.178.11"
    alias   = "k3s-soniiit-prod1-server01.home.soniiit.net"
    ports   = ["22"]
  }
  "k3s_soniiit_prod1_agent01" = {
    name    = "k3s-soniiit-prod1-agent01"
    address = "192.168.178.12"
    alias   = "k3s-soniiit-prod1-agent01.home.soniiit.net"
    ports   = ["22"]
  }
}
