import {
  to = routeros_ip_address.bridge
  id = "*1"
}

resource "routeros_ip_address" "bridge" {
  interface = routeros_interface_bridge.bridge.name
  address   = "192.168.31.254/20"
  network   = "192.168.16.0"
}

resource "routeros_ip_dns" "dns" {
  allow_remote_requests = true

  # servers = ["202.101.172.35", "223.5.5.5"]

  # use_doh_server = "https://223.5.5.5/dns-query"
}

resource "routeros_ip_address" "chinanet" {
  interface = routeros_interface_ethernet.ether1.name
  address   = "192.168.1.20/24"
  network   = "192.168.1.0"
}
