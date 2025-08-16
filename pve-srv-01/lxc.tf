# LXC die nicht von Terraform erstellt werden
# VMID 100; LXC-Pterodactyl-Panel
# VMID 101; LXC-Pterodactyl-Wings
# VMID 103; Github-Runner-Docker
# VMID 110; Github-Runner-Terraform
# VMID 115; Github-Runner-Packer
# VMID 121; LXC-Bind9
# VMID 128; LXC-Nextcloud


/* resource "proxmox_lxc" "lxc-wazuh" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-wazuh"
    vmid         = 100
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
} */

resource "proxmox_lxc" "lxc-bind9" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-bind9"
    vmid         = 121
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

resource "proxmox_lxc" "lxc-cloudflared" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-cloudflared"
    vmid         = 104
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

resource "proxmox_lxc" "lxc-harbor" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-harbor"
    vmid         = 105
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
        ip     = "192.168.178.44/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-syncthing" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-syncthing"
    vmid         = 109
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
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
        ip     = "192.168.178.48/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-omni" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-omni"
    vmid         = 110
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
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

/*
resource "proxmox_lxc" "lxc-netdata-02" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-netdata-02"
    vmid         = 110
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
        size    = "64G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.49/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-netdata-03" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-netdata-03"
    vmid         = 111
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
        size    = "64G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.50/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-netdata-04" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-netdata-04"
    vmid         = 112
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
        size    = "64G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.51/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-netdata-05" {
    target_node  = "pve-srv-01"
    hostname     = "lxc-netdata-05"
    vmid         = 113
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
        size    = "64G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.52/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
} */
