resource "proxmox_lxc" "lxc-twingate-demo" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-demo"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.220/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-desktop" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-desktop"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.221/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-development" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-development"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.222/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-docker" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-docker"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.223/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-gitagents" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-gitagents"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.224/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-home" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-home"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.225/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-kubernetes" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-kubernetes"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.226/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-lxc" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-lxc"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.227/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-nas" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-nas"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.228/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}

resource "proxmox_lxc" "lxc-twingate-windows" {
    target_node  = "pve-srv-01"
    hostname     = "twingate-windows"
    ostemplate   = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
    password     = var.lxc_password
    ostype       = "ubuntu"
    unprivileged = true
    cores     = 1
    memory    = 1024
    pool      = "Twingate"

  // Terraform will crash without rootfs defined
    rootfs {
        storage = "M2-Storage"
        size    = "16G"
  }

    network {
        name   = "eth0"
        bridge = "vmbr0"
        ip     = "192.168.178.229/24"
        ip6    = "auto"
        gw     = "192.168.178.1"
  }

    features {
        nesting = true
    }

    onboot = true
}