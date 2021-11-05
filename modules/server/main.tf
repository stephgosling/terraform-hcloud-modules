resource "random_id" "this" {
  count       = var.servers_to_create
  byte_length = 8
}

resource "hcloud_server" "this" {
  count        = var.servers_to_create
  name         = "${var.name_prefix}-${random_id.this.*.hex[count.index]}"
  image        = var.image
  server_type  = var.server_type
  datacenter   = var.datacenter
  firewall_ids = var.firewall_ids

  delete_protection  = var.delete_protection
  rebuild_protection = var.rebuild_protection

  ssh_keys = var.ssh_keys

  labels = var.labels
}
