resource "routeros_interface_wireguard" "wg" {
  name        = "wg"
  listen_port = 51820
  private_key = file("private.key")
}


resource "routeros_interface_wireguard_peer" "yunhui" {
  interface       = routeros_interface_wireguard.wg.name
  public_key      = "NrZM3l9PYL1zPN/XWEjUTfGa60cHyWQPfRmRGE9NSio="
  allowed_address = ["192.168.100.0/24"]
}
