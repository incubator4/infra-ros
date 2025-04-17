resource "routeros_ip_route" "chinanet" {
  gateway      = routeros_interface_pppoe_client.chinanet.name
  dst_address  = "202.101.172.35/32"
  target_scope = 11
}

# resource "routeros_ip_route" "chinaunicom" {
#   gateway      = routeros_interface_pppoe_client.chinaunicom.name
#   dst_address  = "223.5.5.5/32"
#   target_scope = 11
# }

resource "routeros_routing_table" "chinanet" {
  name = "chinanet"
  fib  = false
}

# resource "routeros_routing_table" "chinaunicom" {
#   name = "chinaunicom"
#   fib  = false
# }

resource "routeros_ip_route" "check_chinanet" {
  gateway       = routeros_interface_pppoe_client.chinanet.name
  distance      = 1
  target_scope  = 11
  routing_table = routeros_routing_table.chinanet.name
  check_gateway = "ping"
}

# resource "routeros_ip_route" "check_chinaunicom" {
#   gateway       = routeros_interface_pppoe_client.chinaunicom.name
#   distance      = 2
#   target_scope  = 11
#   routing_table = routeros_routing_table.chinaunicom.name
#   check_gateway = "ping"
# }

resource "routeros_ip_route" "yunhui" {
  gateway     = "10.10.0.2"
  dst_address = "192.168.100.0/24"
}
