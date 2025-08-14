# Security Policy für LXC
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

# Harbor
resource "twingate_resource" "lxc_harbor" {
    name = "lxc-harbor"
    address = "192.168.178.44"
    alias = "lxc-harbor.home.soniiit.net"
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

# Syncthing
resource "twingate_resource" "lxc_syncthing" {
    name = "lxc-syncthing"
    address = "192.168.178.48"
    alias = "lxc-syncthing.home.soniiit.net"
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