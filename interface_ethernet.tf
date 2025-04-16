import {
  to = routeros_interface_ethernet.ether1
  id = "*1"
}

import {
  to = routeros_interface_ethernet.ether2
  id = "*2"
}

import {
  to = routeros_interface_ethernet.ether3
  id = "*3"
}

import {
  to = routeros_interface_ethernet.ether4
  id = "*4"
}

import {
  to = routeros_interface_ethernet.ether5
  id = "*5"
}

import {
  to = routeros_interface_ethernet.ether6
  id = "*6"
}

import {
  to = routeros_interface_ethernet.ether7
  id = "*7"
}

import {
  to = routeros_interface_ethernet.ether8
  id = "*8"
}

import {
  to = routeros_interface_ethernet.sfp-sfpplus1
  id = "*9"
}

resource "routeros_interface_ethernet" "ether1" {
  name         = "ether1"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether2" {
  name         = "ether2"
  factory_name = ""
}
resource "routeros_interface_ethernet" "ether3" {
  name         = "ether3"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether4" {
  name         = "ether4"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether5" {
  name         = "ether5"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether6" {
  name         = "ether6"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether7" {
  name         = "ether7"
  factory_name = ""
}

resource "routeros_interface_ethernet" "ether8" {
  name         = "ether8"
  factory_name = ""
}

resource "routeros_interface_ethernet" "sfp-sfpplus1" {
  name         = "sfp-sfpplus1"
  factory_name = ""
}
