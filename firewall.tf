resource "routeros_ip_firewall_nat" "chinanet" {
  action        = "masquerade"
  chain         = "srcnat"
  out_interface = routeros_interface_pppoe_client.chinanet.name
}

resource "routeros_ip_firewall_nat" "chinanet_onu" {
  action        = "masquerade"
  chain         = "srcnat"
  out_interface = routeros_interface_ethernet.ether1.name
}

# resource "routeros_ip_firewall_nat" "chinaunicom" {
#   action        = "masquerade"
#   chain         = "srcnat"
#   out_interface = routeros_interface_pppoe_client.chinaunicom.name
# }

resource "routeros_ip_firewall_mangle" "ipv4" {
  action        = "change-mss"
  chain         = "forward"
  out_interface = routeros_interface_pppoe_client.chinanet.name
  protocol      = "tcp"
  tcp_flags     = "syn"
  new_mss       = "clamp-to-pmtu"
  passthrough   = true

  # new_mss       = "1130"
  # tcp_mss       = "1301-65535"
}

resource "routeros_ip_firewall_filter" "wg" {
  action   = "accept"
  chain    = "input"
  dst_port = routeros_interface_wireguard.wg.listen_port
  protocol = "udp"
  comment  = "Allow WireGuard traffic"
}
