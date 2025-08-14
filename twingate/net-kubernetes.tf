# Security Policy für Kubernetes
data "twingate_security_policy" "policy_kubernetes" {
  name = "Kubernetes Policy"
}

# Remote Network für Kubernetes
resource "twingate_remote_network" "net_kubernetes" {
  name = "net-kubernetes"
  location = "ON_PREMISE"
}

# Kubernetes Gruppe
resource "twingate_group" "kubernetes_group" {
  name = "net-kubernetes_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# K3s-SoniiiT-Prod-VIP
resource "twingate_resource" "k3s_soniiit_prod1_vip" {
    name = "k3s-soniiit-prod1-vip"
    address = "192.168.178.10"
    alias = "k3s-soniiit-prod1-vip.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "RESTRICTED"
            ports = ["6443"]
        }
        udp = {
            policy = "DENY_ALL"
        }
    }

    access_group {
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Server01
resource "twingate_resource" "k3s_soniiit_prod1_server01" {
    name = "k3s-soniiit-prod1-server01"
    address = "192.168.178.11"
    alias = "k3s-soniiit-prod1-server01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Agent01
resource "twingate_resource" "k3s_soniiit_prod1_agent01" {
    name = "k3s-soniiit-prod1-agent01"
    address = "192.168.178.12"
    alias = "k3s-soniiit-prod1-agent01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Agent02
resource "twingate_resource" "k3s_soniiit_prod1_agent02" {
    name = "k3s-soniiit-prod1-agent02"
    address = "192.168.178.13"
    alias = "k3s-soniiit-prod1-agent02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Agent03
resource "twingate_resource" "k3s_soniiit_prod1_agent03" {
    name = "k3s-soniiit-prod1-agent03"
    address = "192.168.178.14"
    alias = "k3s-soniiit-prod1-agent03.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Agent04
resource "twingate_resource" "k3s_soniiit_prod1_agent04" {
    name = "k3s-soniiit-prod1-agent04"
    address = "192.168.178.14"
    alias = "k3s-soniiit-prod1-agent04.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# K3s-SoniiiT-Prod-Agent05
resource "twingate_resource" "k3s_soniiit_prod1_agent05" {
    name = "k3s-soniiit-prod1-agent05"
    address = "192.168.178.15"
    alias = "k3s-soniiit-prod1-agent05.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_kubernetes.id

    security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
        group_id = twingate_group.kubernetes_group.id
        security_policy_id = data.twingate_security_policy.policy_kubernetes.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}