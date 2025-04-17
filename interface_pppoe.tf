resource "routeros_interface_pppoe_client" "chinanet" {
  name      = "chinanet"
  interface = routeros_interface_ethernet.ether1.name
  user      = var.CHINANET_USERNAME
  password  = var.CHINANET_PASSWORD

  use_peer_dns      = true
  add_default_route = true

  default_route_distance = 1
}

# resource "routeros_interface_pppoe_client" "chinaunicom" {
#   name              = "chinaunicom"
#   interface         = routeros_interface_ethernet.sfp-sfpplus2.name
#   user              = "057100577393"
#   password          = "577393"
#   use_peer_dns      = true
#   add_default_route = true

#   default_route_distance = 2
# }
