terraform {
  required_providers {
    routeros = {
      source  = "terraform-routeros/routeros"
      version = "1.70.0"
    }
  }
}

provider "routeros" {
  hosturl  = var.MIKROTIK_HOST
  username = var.MIKROTIK_USER
  password = var.MIKROTIK_PASSWORD
  insecure = var.MIKROTIK_INSECURE
  # Configuration options
}
