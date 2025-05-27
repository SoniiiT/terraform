# Security Policy für Home
data "twingate_security_policy" "policy_home" {
  name = "Home Policy"
}

# Remote Network für Home
resource "twingate_remote_network" "net_home" {
  name = "net-home"
  location = "ON_PREMISE"
}

# Home Gruppe
resource "twingate_group" "home_group" {
  name = "net-home_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Wildcard-Route für Home
resource "twingate_resource" "wildcard_dns_home" {
    name = "Wildcard Home"
    address = "*.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "ALLOW_ALL"
        }
        udp = {
            policy = "ALLOW_ALL"
        }
    }

    dynamic "access_group" {
        for_each = [twingate_group.home_group.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# PVE-SRV-01
resource "twingate_resource" "pve_srv_01" {
    name = "pve-srv-01"
    address = "192.168.178.6"
    alias = "pve-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "8006"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.home_group.id
        security_policy_id = data.twingate_security_policy.policy_home.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# PBS-BAK-01
resource "twingate_resource" "pbs_bak_01" {
    name = "pbs-bak-01"
    address = "192.168.178.5"
    alias = "pbs-bak-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["22", "8007"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.home_group.id
        security_policy_id = data.twingate_security_policy.policy_home.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# jellyfin-home-01
resource "twingate_resource" "jellyfin_home_01" {
    name = "jellyfin-home-01"
    address = "192.168.178.7"
    alias = "jellyfin-home-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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

    dynamic "access_group" {
        for_each = [twingate_group.home_group.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}

# home-srv-01
resource "twingate_resource" "home_srv_01" {
    name = "home-srv-01"
    address = "192.168.178.1"
    alias = "home-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_home.id

    security_policy_id = data.twingate_security_policy.policy_home.id

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

    dynamic "access_group" {
        for_each = [twingate_group.home.id]
        content {
            group_id = access_group.value
            security_policy_id = data.twingate_security_policy.policy_home.id
            usage_based_autolock_duration_days = 30
        }
    }

    is_active = true
}