# Security Policy für Kubernetes
resource "twingate_security_policy" "policy_kubernetes" {
  name = "Kubernetes Policy"
}

# Remote Network für Kubernetes
resource "twingate_remote_network" "net_kubernetes" {
  name = "net-kubernetes"
  location = "ON_PREMISE"
}

# K3s-Soniiit-Prod-1 Gruppe
resource "twingate_group" "k3s_soniiit_prod_1_group" {
  name = "net-kubernetes-soniiit-prod-1_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}