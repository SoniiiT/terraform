# Security Policy für Kubernetes
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_kubernetes" {
  name = "Kubernetes Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_kubernetes" {
  name = "net-kubernetes"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "kubernetes" {
  name = "net-kubernetes_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}