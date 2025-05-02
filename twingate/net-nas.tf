# Security Policy für NAS
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_nas" {
  name = "NAS Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_nas" {
  name = "net-nas"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "nas" {
  name = "net-nas_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}