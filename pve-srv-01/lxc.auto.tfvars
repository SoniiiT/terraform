#VMID: 100 - 199
lxc_containers = {
  "lxc-bind9" = {
    vmid   = 100
    cores  = 1
    memory = 1024
    ip     = "192.168.178.3"
  }
  "lxc-harbor" = {
    vmid   = 101
    cores  = 2
    memory = 8192
    ip     = "192.168.178.42"
  }
  "lxc-hermes-agent" = {
    vmid          = 109
    cores         = 2
    memory        = 8192
    ip            = "192.168.178.90"
    os_disk_size  = "32G"
  }
  "lxc-remotely" = {
    vmid   = 103
    cores  = 1
    memory = 8192
    ip     = "192.168.178.46"
  }
  "lxc-teleport-proxy" = {
    vmid   = 105
    cores  = 1
    memory = 4096
    ip     = "192.168.178.48"
  }
}
