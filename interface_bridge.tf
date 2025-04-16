import {
  to = routeros_interface_bridge.bridge
  id = "*A"
}

resource "routeros_interface_bridge" "bridge" {
  name    = "bridge"
  comment = "defconf"
}

