# Datenquelle für den User
data "twingate_users" "all" {
  email = "Toni.Romero@live.de"
}

# Twingate Gruppe für AWS
resource "twingate_group" "aws" {
  name = "aws_group"
  user_ids = [data.twingate_users.all.users[0].id]
  is_authoritative = true
}
