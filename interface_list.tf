import {
  to = routeros_interface_list.wan1
  id = "*2000010"
}

import {
  to = routeros_interface_list.lan
  id = "*2000011"
}

import {
  to = routeros_interface_list_member.lan
  id = "*1"
}

resource "routeros_interface_list" "wan1" {
  name = "WAN1"
}

resource "routeros_interface_list" "wan2" {
  name = "WAN2"
}

resource "routeros_interface_list" "lan" {
  name = "LAN"
}

resource "routeros_interface_list_member" "wan1" {
  interface = routeros_interface_ethernet.ether1.name
  list      = routeros_interface_list.wan1.name
}

resource "routeros_interface_list_member" "wan2" {
  interface = routeros_interface_ethernet.ether2.name
  list      = routeros_interface_list.wan2.name
}

resource "routeros_interface_list_member" "lan" {
  interface = routeros_interface_bridge.bridge.name
  list      = routeros_interface_list.lan.name
}
