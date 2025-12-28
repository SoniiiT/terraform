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
    cores  = 4
    memory = 8192
    data_disk_size = "128G"
    data_disk_mountpoint = "/mnt/docker"
    ip     = "192.168.178.42"
  }
  "lxc-paperless-ngx" = {
    vmid   = 102
    cores  = 1
    memory = 4096
    data_disk_size = "64G"
    data_disk_mountpoint = "/mnt/docker"
    ip     = "192.168.178.43"
  }
  "lxc-remotely" = {
    vmid   = 103
    cores  = 1
    memory = 8192
    ip     = "192.168.178.46"
  }
  "lxc-teleport-server" = {
    vmid   = 104
    cores  = 2
    memory = 8192
    ip     = "192.168.178.47"
  }
  "lxc-teleport-proxy" = {
    vmid   = 105
    cores  = 1
    memory = 4096
    ip     = "192.168.178.48"
  }
  "lxc-twingate-connectors" = {
    vmid   = 106
    cores  = 1
    memory = 6144
    ip     = "192.168.178.49"
  }
}
