resource "hcloud_firewall" "this" {
  name   = var.name
  labels = var.labels

  dynamic "rule" {
    for_each = var.inbound_rules
    content {
      direction   = "in"
      protocol    = rule.value["protocol"]
      port        = rule.value["port"]
      source_ips  = rule.value["source_ips"]
      description = lookup(rule.value, "description", null)
    }
  }

  dynamic "rule" {
    for_each = var.outbound_rules
    content {
      direction       = "out"
      protocol        = rule.value["protocol"]
      port            = rule.value["port"]
      destination_ips = rule.value["destination_ips"]
      description     = lookup(rule.value, "description", null)
    }
  }

}
