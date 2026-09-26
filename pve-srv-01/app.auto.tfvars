# VMID: 300-399
app_vms = {
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
  "app-srv-03" = {
    vmid        = 303
    description = "Paperclip - AI Agent Company Control Plane (Agent Orchestration, Node.js, Postgres, Docker)"
    cores       = 2
    sockets     = 1
    cpu_type    = "x86-64-v2-AES"
    memory      = 8192
    ip          = "192.168.178.93"
    disk_size   = "40G"
  }
}
