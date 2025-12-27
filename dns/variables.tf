variable "dns_zone" {
  description = "Default DNS zone"
  type        = string
  default     = "home.soniiit.net."
}

variable "dev_dns_zone" {
  description = "Development DNS zone"
  type        = string
  default     = "dev.soniiit.net."
}

variable "demo_dns_zone" {
  description = "Demo DNS zone"
  type        = string
  default     = "demo.soniiit.net."
}

variable "dns_ttl" {
  description = "Default TTL for DNS records"
  type        = number
  default     = 3600
}

variable "app_records" {
  description = "Map of Application A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "docker_records" {
  description = "Map of Docker A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "lxc_records" {
  description = "Map of LXC A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "proxy_records" {
  description = "Map of Reverse Proxy A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "home_records" {
  description = "Map of Home Network A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "runner_records" {
  description = "Map of GitHub Runner A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "windows_records" {
  description = "Map of Windows A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "dev_records" {
  description = "Map of Development A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}

variable "demo_records" {
  description = "Map of Demo A records"
  type = map(object({
    name      = string
    addresses = list(string)
    ttl       = optional(number)
  }))
  default = {}
}
