# VMID: 300-399
app_vms = {
  "app-srv-01" = {
    vmid      = 300
    description = "VSCode Remote Development Server"
    tags      = "ubuntu;application"
    cores     = 4
    memory    = 32768
    ip        = "192.168.178.80"
    disk_size = "128G"
  }
  "app-srv-02" = {
    vmid      = 302
    description = "Minecraft Bot"
    tags      = "ubuntu;application"
    cores     = 2
    memory    = 8192
    ip        = "192.168.178.81"
    disk_size = "32G"
  }
}
