# Requires an internal BIND delegation for mcp.soniiit.net.
mcp_records = {
  "mcp-portainer" = {
    name      = "portainer"
    addresses = ["192.168.178.30"]
  }
}

mcp_cname_records = {
  "mcp-obot" = {
    name  = "obot"
    cname = "4fff19e5-d99f-45e6-9feb-4129dd507199.cfargotunnel.com."
  }
}
