terraform {
  cloud {
    organization = "soniiit-net"
    workspaces {
      name = "cloudflare"
    }
  }

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "5.3.0"
    }
  }
}

variable "cloudflare_api_token" {
  type = string
  sensitive = true
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

