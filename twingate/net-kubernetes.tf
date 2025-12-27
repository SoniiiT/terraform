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

resource "twingate_resource" "kubernetes" {
  for_each = var.k8s_resources

  name              = each.value.name
  address           = each.value.address
  alias             = each.value.alias
  remote_network_id = twingate_remote_network.net_kubernetes.id

  security_policy_id = data.twingate_security_policy.policy_kubernetes.id

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
    group_id                           = twingate_group.kubernetes_group.id
    security_policy_id                 = data.twingate_security_policy.policy_kubernetes.id
    usage_based_autolock_duration_days = 30
  }

  is_active = true
}
