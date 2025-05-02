# Security Policy für Gitagents
data "twingate_security_policy" "policy_gitagents" {
  name = "Gitagents Policy"
}

# Remote Network für Gitagents
resource "twingate_remote_network" "net_gitagents" {
  name = "net-gitagents"
  location = "ON_PREMISE"
}

# Gitagents Gruppe
resource "twingate_group" "gitagents_group" {
  name = "net-gitagents_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}