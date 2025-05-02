terraform {
  required_providers {
    twingate = {
      source = "twingate/twingate"
      version = "3.0.19"
    }
  }
}

variable "tg_api_token" {
    type = string
    sensitive = true
}

provider "twingate" {
    api_token = var.tg_api_token
    network   = "soniiit"
}