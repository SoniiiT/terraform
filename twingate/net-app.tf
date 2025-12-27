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

resource "twingate_resource" "app" {
  for_each = var.app_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_app.id

  security_policy_id = data.twingate_security_policy.policy_app.id

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
    group_id                           = twingate_group.app_group.id
    security_policy_id                 = data.twingate_security_policy.policy_app.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
