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