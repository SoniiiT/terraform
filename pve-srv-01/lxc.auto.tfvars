lxc_containers = {
  "lxc-bind9" = {
    vmid   = 121
    cores  = 1
    memory = 2048
    ip     = "192.168.178.3"
  }
  "lxc-cloudflared" = {
    vmid   = 104
    cores  = 1
    memory = 2048
    ip     = "192.168.178.43"
  }
  "lxc-harbor" = {
    vmid   = 105
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
}
