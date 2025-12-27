# Security Policy für Demo
data "twingate_security_policy" "policy_demo" {
  name = "Demo Policy"
}

# Remote Network für Demo
resource "twingate_remote_network" "net_demo" {
  name = "net-demo"
  location = "ON_PREMISE"
}

# Demo Gruppe
resource "twingate_group" "demo_group" {
  name = "net-demo_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

resource "twingate_resource" "demo" {
  for_each = var.demo_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_demo.id

  security_policy_id = data.twingate_security_policy.policy_demo.id

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
    group_id                           = twingate_group.demo_group.id
    security_policy_id                 = data.twingate_security_policy.policy_demo.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
