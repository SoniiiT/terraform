variable "docker_vms" {
  description = "Map of Docker VMs to create"
  type = map(object({
    vmid           = number
    description    = optional(string, "")
    tags           = optional(string, "docker")
    cores          = optional(number, 1)
    sockets        = optional(number, 1)
    memory         = optional(number, 4096)
    ip             = string
    os_disk_size   = optional(string, "32G")
    data_disk_size = optional(string, null)
  }))
}

variable "app_vms" {
  description = "Map of Application VMs to create"
  type = map(object({
    vmid        = number
    description = optional(string, "")
    tags        = optional(string, "application")
    cores       = optional(number, 1)
    sockets     = optional(number, 1)
    cpu_type    = optional(string, "kvm64")
    memory      = optional(number, 4096)
    ip        = string
    disk_size = optional(string, "32G")
  }))
}

variable "ci_ssh_public_key" {
  description = "Public SSH key for Cloud-Init"
  type        = string
}

variable "proxmox_api_url" {
  type = string
}

variable "proxmox_api_token_id" {
  type = string
}

variable "proxmox_api_token_secret" {
  type      = string
  sensitive = true
}

variable "lxc_password" {
  description = "Passwort für den LXC-Container"
  type        = string
  sensitive   = true
}

variable "lxc_containers" {
  description = "Map of LXC containers to create"
  type = map(object({
    vmid                 = number
    cores                = optional(number, 1)
    memory               = optional(number, 4096)
    ip                   = string
    os_disk_size         = optional(string, "32G")
    data_disk_size       = optional(string, null)
    data_disk_mountpoint = optional(string, "/mnt/data")
  }))
}

variable "k3s_vms" {
  description = "Map of K3s VMs to create"
  type = map(object({
    vmid           = number
    description    = optional(string, "")
    tags           = optional(string, "kubernetes")
    cores          = optional(number, 1)
    sockets        = optional(number, 1)
    memory         = optional(number, 4096)
    ip             = string
    os_disk_size   = optional(string, "32G")
    data_disk_size = optional(string, null)
  }))
}

variable "demo_vms" {
  description = "Map of Demo VMs to create"
  type = map(object({
    vmid           = number
    description    = optional(string, "")
    tags           = optional(string, "demo")
    cores          = optional(number, 1)
    sockets        = optional(number, 1)
    memory         = optional(number, 4096)
    ip             = string
    os_disk_size   = optional(string, "32G")
    data_disk_size = optional(string, null)
  }))
  default = {}
}

variable "dev_vms" {
  description = "Map of Development VMs to create"
  type = map(object({
    vmid           = number
    description    = optional(string, "")
    tags           = optional(string, "development")
    cores          = optional(number, 1)
    sockets        = optional(number, 1)
    memory         = optional(number, 4096)
    ip             = string
    os_disk_size   = optional(string, "32G")
    data_disk_size = optional(string, null)
  }))
  default = {}
}

variable "windows_vms" {
  description = "Map of Windows VMs to create"
  type = map(object({
    vmid           = number
    description    = optional(string, "")
    cores          = optional(number, 2)
    sockets        = optional(number, 1)
    memory         = optional(number, 4096)
    ip             = optional(string, "dhcp")
    os_disk_size   = optional(string, "32G")
    data_disk_size = optional(string, null)
    os             = string
  }))
  default = {}
}
