# Security Policy für K3s
data "twingate_security_policy" "policy_k3s" {
  name = "K3s Policy"
}

# Remote Network für K3s
resource "twingate_remote_network" "net_k3s" {
  name = "net-k3s-soniiit-prod-1"
  location = "ON_PREMISE"
}

# K3s Gruppe
resource "twingate_group" "k3s" {
  name = "net-k3s-soniiit-prod-1_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}