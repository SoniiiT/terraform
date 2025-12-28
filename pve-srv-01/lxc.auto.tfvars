#VMID: 100 - 199
lxc_containers = {
  "lxc-bind9" = {
    vmid   = 100
    cores  = 1
    memory = 2048
    ip     = "192.168.178.3"
  }
  "lxc-harbor" = {
    vmid   = 101
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
  "lxc-paperless-ngx" = {
    vmid   = 102
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
  "lxc-remotely" = {
    vmid   = 103
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
  "lxc-teleport-server" = {
    vmid   = 104
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
  "lxc-twingate-connectors" = {
    vmid   = 105
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
}
