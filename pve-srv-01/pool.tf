# resource "proxmox_pool" "application" {
#   poolid  = "Application" 
#   comment = "Application pool"
# }

resource "proxmox_pool" "backup" {
  poolid  = "Backup" 
  comment = "Backup pool"
}

resource "proxmox_pool" "demo" {
  poolid  = "Demo" 
  comment = "Demo pool"
}

resource "proxmox_pool" "desktop" {
  poolid  = "Desktop" 
  comment = "Desktop pool"
}

resource "proxmox_pool" "development" {
  poolid  = "Development" 
  comment = "Development pool"
}

resource "proxmox_pool" "docker" {
  poolid  = "Docker" 
  comment = "Docker pool"
}

resource "proxmox_pool" "gitagents" {
  poolid  = "GitAgents" 
  comment = "GitAgents pool"
}

resource "proxmox_pool" "home" {
  poolid  = "Home" 
  comment = "Home pool"
}

resource "proxmox_pool" "k3s_soniiit_prod_1" {
  poolid  = "K3s-SoniiiT-Prod-1" 
  comment = "K3s-SoniiiT-Prod-1 pool"
}

# resource "proxmox_pool" "lxc" {
#   poolid  = "LXC" 
#   comment = "LXC pool"
# }

resource "proxmox_pool" "nas" {
  poolid  = "NAS" 
  comment = "NAS pool"
}

resource "proxmox_pool" "template" {
  poolid  = "Template" 
  comment = "Template pool"
}

resource "proxmox_pool" "windows" {
  poolid  = "Windows" 
  comment = "Windows pool"
}