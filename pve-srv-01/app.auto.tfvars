# VMID: 300-399
app_vms = {
  "ai-srv-01" = {
    vmid        = 300
    description = "AI Application Server 01 - CLI Tools (Claude, Copilot, etc.)"
    cores       = 4
    sockets     = 1
    cpu_type    = "x86-64-v2-AES"
    memory      = 32768
    ip          = "192.168.178.90"
    disk_size   = "128G"
  }
  "app-srv-01" = {
    vmid        = 301
    description = "Application Server 01 - VS Code Server (iPad IDE, Docker, Extensions, AI CLI)"
    cores       = 4
    sockets     = 1
    cpu_type    = "x86-64-v2-AES"
    memory      = 16384
    ip          = "192.168.178.91"
    disk_size   = "64G"
  }
}
