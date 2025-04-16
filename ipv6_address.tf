resource "routeros_ipv6_address" "chinanet" {
  address   = "::1/64"
  from_pool = routeros_ipv6_dhcp_client.chinanet.pool_name
  interface = routeros_interface_bridge.bridge.name
  advertise = true
  # eui_64    = true
  no_dad = false


  lifecycle {
    ignore_changes = [address]
  }
}

# resource "routeros_ipv6_address" "chinaunicom" {
#   address   = "::1/64"
#   from_pool = routeros_ipv6_dhcp_client.chinaunicom.pool_name
#   interface = routeros_interface_bridge.bridge.name
#   advertise = true
#   no_dad    = false

#   lifecycle {
#     ignore_changes = [address]
#   }
# }

resource "routeros_ipv6_neighbor_discovery" "bridge" {
  interface   = routeros_interface_bridge.bridge.name
  ra_interval = "5m-15m"
  ra_lifetime = "45m"

  advertise_mac_address = true
}
