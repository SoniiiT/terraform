# Security Policy für GitAgents
data "twingate_security_policy" "policy_gitagents" {
  name = "GitAgents Policy"
}

# Remote Network für GitAgents
resource "twingate_remote_network" "net_gitagents" {
  name = "net-gitagents"
  location = "ON_PREMISE"
}

# GitAgents Gruppe
resource "twingate_group" "gitagents" {
  name = "net-gitagents_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}