# Security Policy für NAS
resource "twingate_security_policy" "policy_nas" {
  name = "NAS Policy"
}

# Remote Network für NAS
resource "twingate_remote_network" "net_nas" {
  name = "net-nas"
  location = "ON_PREMISE"
}

# NAS Gruppe
resource "twingate_group" "nas_group" {
  name = "net-nas_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}