terraform {
    required_providers {
    twingate = {
        source = "Twingate/twingate"
        version = "3.0.4"
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