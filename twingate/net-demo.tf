# Security Policy für Demo
data "twingate_security_policy" "policy_demo" {
  name = "Demo Policy"
}

# Remote Network für Demo
resource "twingate_remote_network" "net_demo" {
  name = "net-demo"
  location = "ON_PREMISE"
}

# Demo Gruppe
resource "twingate_group" "demo_group" {
  name = "net-demo_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}

# # Wildcard-Route für Demo
# resource "twingate_resource" "wildcard_dns_demo" {
#     name = "Wildcard Demo"
#     address = "*.demo.soniiit.net"
#     remote_network_id = twingate_remote_network.net_demo.id

#     security_policy_id = data.twingate_security_policy.policy_demo.id

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
#         for_each = [twingate_group.demo.id]
#         content {
#             group_id = access_group.value
#             security_policy_id = data.twingate_security_policy.policy_demo.id
#             usage_based_autolock_duration_days = 30
#         }
#     }

#     is_active = true
# }