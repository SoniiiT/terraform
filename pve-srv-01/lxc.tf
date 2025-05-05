resource "proxmox_lxc" "lxc-checkmk" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-checkmk"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 7
    memory    = 32768
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.48/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-wazuh" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-wazuh"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 2
    memory    = 8192
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.46/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-bind9" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-bind9"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 2048
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.3/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-lancache" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-lancache"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 2
    memory    = 16384
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "HDD-Storage"
        size    = "1024G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.4/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-pterodactyl-panel" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-pterodactyl-panel"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 2048
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.40/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-pterodactyl-wings" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-pterodactyl-wings"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 4
    memory    = 16384
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "HDD-Storage"
        size    = "512G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.41/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-cloudflared" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-cloudflared"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 2048
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.43/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-nextcloud" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-nextcloud"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 2
    memory    = 8192
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "HDD-Storage"
        size    = "192G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.47/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-authentik" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-authentik"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 2048
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.44/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-cloudflareddns" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-cloudflareddns"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 2048
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.42/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-remotely" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-remotely"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 2
    memory    = 4096
    pool      = "LXC"
    nameserver = "192.168.178.3,1.1.1.1,8.8.8.8"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "32G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.45/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}