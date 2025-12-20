terraform {
  cloud {
    organization = "soniiit-net"
    workspaces {
      name = "pve-srv-01"
    }
  }

    required_providers {
        proxmox = {
            source = "Telmate/proxmox"
            version = "3.0.2-rc07"
        }
    }
}

variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
}

variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
}

variable "lxc_password" {
  description = "Passwort für den LXC-Container"
  type        = string
  sensitive   = true
} 

provider "proxmox" {

    pm_api_url = var.proxmox_api_url
    pm_api_token_id = var.proxmox_api_token_id
    pm_api_token_secret = var.proxmox_api_token_secret

    # (Optional) Skip TLS Verification
    pm_tls_insecure = true

}
