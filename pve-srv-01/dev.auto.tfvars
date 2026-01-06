#VMID: 450-499
dev_vms = {
  "dev-srv-01" = {
    vmid         = 450
    description  = "Development Server 01 - Docker and Development Environment"
    tags         = "ubuntu;development"
    cores        = 2
    sockets      = 1
    memory       = 8192
    ip           = "192.168.178.60"
    os_disk_size = "32G"
  }
  "dev-srv-02" = {
    vmid         = 451
    description  = "Development Server 02 - Docker and Development Environment"
    tags         = "ubuntu;development"
    cores        = 2
    sockets      = 1
    memory       = 8192
    ip           = "192.168.178.61"
    os_disk_size = "32G"
  }
}
