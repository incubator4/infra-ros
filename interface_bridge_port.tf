# resource "routeros_interface_bridge_port" "bridge_ether2" {
#   interface = routeros_interface_ethernet.ether2.name
#   pvid      = 1
#   bridge    = routeros_interface_bridge.bridge.name
#   comment   = "defconf"
# }

# resource "routeros_interface_bridge_port" "bridge_ether3" {
#   interface = routeros_interface_ethernet.ether3.name
#   pvid      = 1
#   bridge    = routeros_interface_bridge.bridge.name
#   comment   = "defconf"
# }

# resource "routeros_interface_bridge_port" "bridge_ether4" {
#   interface = routeros_interface_ethernet.ether4.name
#   pvid      = 1
#   bridge    = routeros_interface_bridge.bridge.name
#   comment   = "defconf"
# }

resource "routeros_interface_bridge_port" "bridge_ether5" {
  interface = routeros_interface_ethernet.ether5.name
  pvid      = 1
  bridge    = routeros_interface_bridge.bridge.name
  comment   = "defconf"
}

resource "routeros_interface_bridge_port" "bridge_ether6" {
  interface = routeros_interface_ethernet.ether6.name
  pvid      = 1
  bridge    = routeros_interface_bridge.bridge.name
  comment   = "defconf"
}

resource "routeros_interface_bridge_port" "bridge_ether7" {
  interface = routeros_interface_ethernet.ether7.name
  pvid      = 1
  bridge    = routeros_interface_bridge.bridge.name
  comment   = "defconf"
}

resource "routeros_interface_bridge_port" "bridge_ether8" {
  interface = routeros_interface_ethernet.ether8.name
  pvid      = 1
  bridge    = routeros_interface_bridge.bridge.name
  comment   = "defconf"
}

resource "routeros_interface_bridge_port" "bridge_sfp-sfpplus1" {
  interface = routeros_interface_ethernet.sfp-sfpplus1.name
  pvid      = 1
  bridge    = routeros_interface_bridge.bridge.name
  comment   = "defconf"
}
