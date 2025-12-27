# Security Policy für Development
data "twingate_security_policy" "policy_development" {
  name = "Development Policy"
}

# Remote Network für Development
resource "twingate_remote_network" "net_development" {
  name = "net-development"
  location = "ON_PREMISE"
}

# Development Gruppe
resource "twingate_group" "development_group" {
  name = "net-development_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "development" {
  for_each = var.dev_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_development.id

  security_policy_id = data.twingate_security_policy.policy_development.id

  protocols = {
    allow_icmp = true
    tcp = {
      policy = each.value.tcp_policy
      ports  = each.value.ports
    }
    udp = {
      policy = each.value.udp_policy
      ports  = each.value.udp_ports
    }
  }

  access_group {
    group_id                           = twingate_group.development_group.id
    security_policy_id                 = data.twingate_security_policy.policy_development.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
