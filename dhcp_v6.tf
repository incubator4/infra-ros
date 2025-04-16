resource "routeros_ipv6_dhcp_client" "chinanet" {
  pool_name          = "chinanet"
  interface          = routeros_interface_pppoe_client.chinanet.name
  add_default_route  = false
  use_peer_dns       = false
  pool_prefix_length = 64
  request            = ["prefix"]
}

# resource "routeros_ipv6_dhcp_client" "chinaunicom" {
#   pool_name          = "chinaunicom"
#   interface          = routeros_interface_pppoe_client.chinaunicom.name
#   add_default_route  = false
#   use_peer_dns       = false
#   pool_prefix_length = 64
#   request            = ["prefix"]
# }

