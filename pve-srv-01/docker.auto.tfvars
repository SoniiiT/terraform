#VMID: 500 - 599
docker_vms = {
  "docker-srv-01" = {
    vmid           = 500
    description    = "Docker Server 01 only for Twingate Connector"
    tags           = "ubuntu;docker"
    cores          = 1
    memory         = 16384
    ip             = "192.168.178.30"
    os_disk_size   = "32G"
    data_disk_size = "128G"
  }
  "docker-srv-02" = {
    vmid           = 501
    description    = "Docker Server 02"
    tags           = "ubuntu;docker"
    cores          = 1
    memory         = 16384
    ip             = "192.168.178.31"
    os_disk_size   = "32G"
    data_disk_size = "128G"
  }
  "docker-srv-03" = {
    vmid           = 502
    description    = "Docker Server 03"
    tags           = "ubuntu;docker"
    cores          = 1
    memory         = 8192
    ip             = "192.168.178.32"
    os_disk_size   = "32G"
    data_disk_size = "128G"
  }
}


