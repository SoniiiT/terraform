variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

variable "soniiit_net_cloudflare_zone_id" {
  description = "The Zone ID for the Cloudflare domain"
  type        = string
}

variable "a_records" {
  description = "Map of A records to create"
  type = map(object({
    name    = string
    content = string
    proxied = bool
    ttl     = number
  }))
}

variable "srv_records" {
  description = "Map of SRV records to create"
  type = map(object({
    name     = string
    service  = string
    proto    = string
    priority = number
    weight   = number
    port     = number
    target   = string
  }))
}
