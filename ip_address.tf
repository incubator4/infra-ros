import {
  to = routeros_ip_address.bridge
  id = "*1"
}

resource "routeros_ip_address" "bridge" {
  interface = routeros_interface_bridge.bridge.name
  address   = "192.168.31.254/20"
  network   = "192.168.16.0"
}

resource "routeros_ip_dns" "dns" {
  allow_remote_requests = true

  # servers = [
  #   "223.5.5.5",    # 阿里DNS
  #   "180.76.76.76", # 百度DNS
  #   "119.29.29.29", # 腾讯DNS
  #   "117.50.11.11", # ONE DNS拦截版 恶意网站拦截、广告过滤
  #   "117.50.10.10", # ONE DNS纯净版 直接返回其真实的响应结果
  # ]

  # use_doh_server = "https://223.5.5.5/dns-query"
}

resource "routeros_ip_address" "chinanet" {
  interface = routeros_interface_ethernet.ether1.name
  address   = "192.168.1.20/24"
  network   = "192.168.1.0"
}
