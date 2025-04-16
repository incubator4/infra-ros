resource "routeros_system_script" "cloudflare" {
  name   = "cloudflare"
  source = <<EOT
:local TOKEN "${var.CLOUDFLARE_TOKEN}"
:local ZONEID "${var.CLOUDFLARE_ZONE_ID}"
:local RECORDID "${var.CLOUDFLARE_RECORD_ID}"
:local RECORDNAME "${var.CLOUDFLARE_RECORD_NAME}"
:local WANIF "${routeros_interface_pppoe_client.chinanet.name}"

${file("scripts/cloudflare.rsc")}
EOT
}

resource "routeros_system_scheduler" "ddns" {
  name     = "ddns"
  on_event = routeros_system_script.cloudflare.name
  interval = "10m"
}
