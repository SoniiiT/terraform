#VMID: 700-799
windows_vms = {
  "dc-srv-01" = {
    vmid           = 700
    description    = "Domain Controller for soniiit.home"
    cores          = 2
    sockets        = 1
    memory         = 4096
    ip             = "192.168.178.80"
    os_disk_size   = "32G"
    os             = "windows-server-2025-standard"
  }
}
