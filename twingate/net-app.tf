# Security Policy für Applications
data "twingate_security_policy" "policy_app" {
  name = "App Policy"
}

# Remote Network für Applications
resource "twingate_remote_network" "net_app" {
  name = "net-app"
  location = "ON_PREMISE"
}

# Application Gruppe
resource "twingate_group" "app_group" {
  name = "net-app_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# APP-SRV-01
resource "twingate_resource" "app_srv_01" {
    name = "app-srv-01"
    address = "192.168.178.80"
    alias = "app-srv-01.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_app.id

    security_policy_id = data.twingate_security_policy.policy_app.id

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
        group_id = twingate_group.app_group.id
        security_policy_id = data.twingate_security_policy.policy_app.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# APP-SRV-02
resource "twingate_resource" "app_srv_02" {
    name = "app-srv-02"
    address = "192.168.178.81"
    alias = "app-srv-02.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_app.id

    security_policy_id = data.twingate_security_policy.policy_app.id

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
        group_id = twingate_group.app_group.id
        security_policy_id = data.twingate_security_policy.policy_app.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}

# APP-SRV-03
resource "twingate_resource" "app_srv_03" {
    name = "app-srv-03"
    address = "192.168.178.82"
    alias = "app-srv-03.home.soniiit.net"
    remote_network_id = twingate_remote_network.net_app.id

    security_policy_id = data.twingate_security_policy.policy_app.id

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
        group_id = twingate_group.app_group.id
        security_policy_id = data.twingate_security_policy.policy_app.id
        usage_based_autolock_duration_days = 30
    }

    is_active = true
}