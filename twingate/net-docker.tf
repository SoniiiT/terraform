# Security Policy für Docker
data "twingate_security_policy" "policy_docker" {
  name = "Docker Policy"
}

# Remote Network für Docker
resource "twingate_remote_network" "net_docker" {
  name = "net-docker"
  location = "ON_PREMISE"
}

# Docker Gruppe
resource "twingate_group" "docker_group" {
  name = "net-docker_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# Docker Server

# Docker-SRV-01
resource "twingate_resource" "docker_srv_01" {
    name = "docker-srv-01"
    address = "192.168.178.30"
    alias = "docker-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_docker.id

    security_policy_id = data.twingate_security_policy.policy_docker.id

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
        group_id = twingate_group.docker_group.id
        security_policy_id = data.twingate_security_policy.policy_docker.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Docker-SRV-01 Wildcard
resource "twingate_resource" "docker_srv_01_wildcard" {
    name = "docker-srv-01-wildcard"
    address = "*.docker-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_docker.id

    security_policy_id = data.twingate_security_policy.policy_docker.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "ALLOW_ALL"
        }
        udp = {
            policy = "ALLOW_ALL"
        }
    }

    access_group {
        group_id = twingate_group.docker_group.id
        security_policy_id = data.twingate_security_policy.policy_docker.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Docker-SRV-02
resource "twingate_resource" "docker_srv_02" {
    name = "docker-srv-02"
    address = "192.168.178.31"
    alias = "docker-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_docker.id

    security_policy_id = data.twingate_security_policy.policy_docker.id

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
        group_id = twingate_group.docker_group.id
        security_policy_id = data.twingate_security_policy.policy_docker.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# Docker-SRV-02 Wildcard
resource "twingate_resource" "docker_srv_02_wildcard" {
    name = "docker-srv-02-wildcard"
    address = "*.docker-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_docker.id

    security_policy_id = data.twingate_security_policy.policy_docker.id

    protocols = {
        allow_icmp = true
        tcp = {
            policy = "ALLOW_ALL"
        }
        udp = {
            policy = "ALLOW_ALL"
        }
    }

    access_group {
        group_id = twingate_group.docker_group.id
        security_policy_id = data.twingate_security_policy.policy_docker.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}