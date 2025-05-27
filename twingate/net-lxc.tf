/* # Security Policy für LXC
data "twingate_security_policy" "policy_lxc" {
  name = "LXC Policy"
}

# Remote Network für LXC
resource "twingate_remote_network" "net_lxc" {
  name = "net-lxc"
  location = "ON_PREMISE"
}

# LXC Gruppe
resource "twingate_group" "lxc_group" {
  name = "net-lxc_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Authentik
resource "twingate_resource" "lxc_authentik" {
    name = "lxc-authentik"
    address = "192.168.178.44"
    alias = "lxc-authentik.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Bind9
resource "twingate_resource" "lxc_bind9" {
    name = "lxc-bind9"
    address = "192.168.178.3"
    alias = "lxc-bind9.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# CheckMK
resource "twingate_resource" "lxc_checkmk" {
    name = "lxc-checkmk"
    address = "192.168.178.48"
    alias = "lxc-checkmk.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Cloudflared
resource "twingate_resource" "lxc_cloudflared" {
    name = "lxc-cloudflared"
    address = "192.168.178.43"
    alias = "lxc-cloudflared.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# CloudflareDDNS
resource "twingate_resource" "lxc_cloudflareddns" {
    name = "lxc-cloudflareddns"
    address = "192.168.178.42"
    alias = "lxc-cloudflareddns.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Lancache
resource "twingate_resource" "lxc_lancache" {
    name = "lxc-lancache"
    address = "192.168.178.4"
    alias = "lxc-lancache.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Nextcloud
resource "twingate_resource" "lxc_nextcloud" {
    name = "lxc-nextcloud"
    address = "192.168.178.47"
    alias = "lxc-nextcloud.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# PiHole
resource "twingate_resource" "lxc_pihole" {
    name = "lxc-pihole"
    address = "192.168.178.99"
    alias = "lxc-pihole.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Pterodactyl-Panel
resource "twingate_resource" "lxc_pterodactyl_panel" {
    name = "lxc-pterodactyl-panel"
    address = "192.168.178.40"
    alias = "lxc-pterodactyl-panel.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Pterodactyl-Wings
resource "twingate_resource" "lxc_pterodactyl_wings" {
    name = "lxc-pterodactyl-wings"
    address = "192.168.178.41"
    alias = "lxc-pterodactyl-wings.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Remotely
resource "twingate_resource" "lxc_remotely" {
    name = "lxc-remotely"
    address = "192.168.178.45"
    alias = "lxc-remotely.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Wazuh
resource "twingate_resource" "lxc_wazuh" {
    name = "lxc-wazuh"
    address = "192.168.178.46"
    alias = "lxc-wazuh.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Nomad
resource "twingate_resource" "lxc_nomad" {
    name = "lxc-wazuh"
    address = "192.168.178.53"
    alias = "lxc-wazuh.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_lxc.id

    security_policy_id = data.twingate_security_policy.policy_lxc.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "4646"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.lxc_group.id
        security_policy_id = data.twingate_security_policy.policy_lxc.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
} */