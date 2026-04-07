# Generated Docker DNS records
docker_records = {
  "docker-srv-01" = {
    name      = "docker-srv-01"
    addresses = ["192.168.178.30"]
  }
  "docker-srv-02" = {
    name      = "docker-srv-02"
    addresses = ["192.168.178.31"]
  }
  "docker-srv-01-wildcard" = {
    name      = "*.docker-srv-01"
    addresses = ["192.168.178.30"]
  }
  "docker-srv-02-wildcard" = {
    name      = "*.docker-srv-02"
    addresses = ["192.168.178.30"]
  }
  "docker-srv-03" = {
    name      = "docker-srv-03"
    addresses = ["192.168.178.32"]
  }
  "docker-srv-03-wildcard" = {
    name      = "*.docker-srv-03"
    addresses = ["192.168.178.32"]
  }
}
