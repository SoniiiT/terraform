# Security Policy für Development
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

data "twingate_security_policy" "policy_development" {
  name = "Development Policy"
}

# Remote Network für Desktop
resource "twingate_remote_network" "net_development" {
  name = "net-development"
  location = "ON_PREMISE"
}

# Desktop Gruppe
resource "twingate_group" "development" {
  name = "net-development_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# # Wildcard-Route für Development
# resource "twingate_resource" "wildcard_dns_development" {
#     name = "Wildcard Development"
#     address = "*.dev.soniiit.net"
#     remote_network_id = twingate_remote_network.net_development.id

#     security_policy_id = data.twingate_security_policy.policy_development.id

#     protocols = {
#         allow_icmp = true
#         tcp = {
#             policy = "ALLOW_ALL"
#         }
#         udp = {
#             policy = "ALLOW_ALL"
#         }
#     }

#     dynamic "access_group" {
#         for_each = [twingate_group.development.id]
#         content {
#             group_id = access_group.value
#             security_policy_id = data.twingate_security_policy.policy_development.id
#             usage_based_autolock_duration_days = 30
#         }
#     }

#     is_active = true
# }