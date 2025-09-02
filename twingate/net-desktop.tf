# Security Policy für Desktop
data "twingate_security_policy" "policy_desktop" {
  name = "Desktop Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_desktop" {
  name = "net-desktop"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "desktop_group" {
  name = "net-desktop_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Win11-Desktop
resource "twingate_resource" "win11-desktop" {
    name = "win11-desktop"
    address = "192.168.178.230"
    alias = "win11-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Fedora-Desktop
resource "twingate_resource" "fedora-desktop" {
    name = "fedora-desktop"
    address = "192.168.178.231"
    alias = "fedora-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445", "22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# NixOS-Desktop
resource "twingate_resource" "nixos-desktop" {
    name = "nixos-desktop"
    address = "192.168.178.232"
    alias = "nixos-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445", "22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Ubuntu-Desktop
resource "twingate_resource" "ubuntu-desktop" {
    name = "ubuntu-desktop"
    address = "192.168.178.233"
    alias = "ubuntu-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445", "22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# RockyOS-Desktop
resource "twingate_resource" "rocky-desktop" {
    name = "rocky-desktop"
    address = "192.168.178.234"
    alias = "rocky-desktop.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_desktop.id

    security_policy_id = data.twingate_security_policy.policy_desktop.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["3389", "445", "22"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.desktop_group.id
        security_policy_id = data.twingate_security_policy.policy_desktop.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}