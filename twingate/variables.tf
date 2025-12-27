variable "tg_api_token" {
  type      = string
  sensitive = true
}

variable "app_resources" {
  description = "Map of App resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "demo_resources" {
  description = "Map of Demo resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "desktop_resources" {
  description = "Map of Desktop resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["3389"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "dev_resources" {
  description = "Map of Development resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "docker_resources" {
  description = "Map of Docker resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "home_resources" {
  description = "Map of Home resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "k8s_resources" {
  description = "Map of Kubernetes resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22", "6443"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "lxc_resources" {
  description = "Map of LXC resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "nas_resources" {
  description = "Map of NAS resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22", "445"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "runner_resources" {
  description = "Map of Runner resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["22"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}

variable "windows_resources" {
  description = "Map of Windows resources"
  type = map(object({
    name       = string
    address    = string
    alias      = optional(string)
    ports      = optional(list(string), ["3389"])
    tcp_policy = optional(string, "RESTRICTED")
    udp_policy = optional(string, "DENY_ALL")
    udp_ports  = optional(list(string), [])
  }))
  default = {}
}
