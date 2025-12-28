# LXC die nicht von Terraform erstellt werden
# VMID 100; LXC-Pterodactyl-Panel
# VMID 101; LXC-Pterodactyl-Wings
# VMID 108; LXC-Wireguard
# VMID 110; Github-Runner-Terraform
# VMID 115; Github-Runner-Packer
# VMID 128; LXC-Nextcloud

lxc_containers = {
  "lxc-bind9" = {
    vmid   = 121
    cores  = 1
    memory = 2048
    ip     = "192.168.178.3"
  }
  "lxc-cloudflared" = {
    vmid   = 104
    cores  = 1
    memory = 2048
    ip     = "192.168.178.43"
  }
  "lxc-harbor" = {
    vmid   = 105
    cores  = 2
    memory = 4096
    ip     = "192.168.178.44"
  }
}
