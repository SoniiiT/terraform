app_vms = {
  "app-srv-01" = {
    vmid      = 200
    description = "HashiCorp Vault Server"
    tags      = "ubuntu;application"
    cores     = 2
    memory    = 8192
    ip        = "192.168.178.80"
    disk_size = "32G"
  }
  "app-srv-02" = {
    vmid      = 201
    description = "VSCode Remote Development Server"
    tags      = "ubuntu;application"
    cores     = 4
    memory    = 32768
    ip        = "192.168.178.81"
    disk_size = "128G"
  }
  "app-srv-03" = {
    vmid      = 202
    description = "Minecraft Bot"
    tags      = "ubuntu;application"
    cores     = 2
    memory    = 8192
    ip        = "192.168.178.82"
    disk_size = "32G"
  }
}
