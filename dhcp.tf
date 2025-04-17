import {
  to = routeros_ip_pool.dhcp
  id = "*1"
}

import {
  to = routeros_ip_dhcp_server.server
  id = "*1"
}

import {
  to = routeros_ip_dhcp_server_network.dhcp
  id = "*1"
}

resource "routeros_ip_pool" "dhcp" {
  name   = "dhcp"
  ranges = ["192.168.16.10-192.168.31.250"]
}

resource "routeros_ip_dhcp_server" "server" {
  interface     = routeros_interface_bridge.bridge.name
  name          = "dhcp"
  address_pool  = routeros_ip_pool.dhcp.name
  disabled      = false
  lease_time    = "1d"
  authoritative = "yes"
  use_radius    = "no"
}

resource "routeros_ip_dhcp_server_network" "dhcp" {
  address    = "192.168.16.0/20"
  gateway    = "192.168.31.254"
  dns_server = ["192.168.31.251", "192.168.31.254"]

  netmask = 20
}
