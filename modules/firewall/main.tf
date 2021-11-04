resource "hcloud_firewall" "this" {
  name   = var.name
  labels = var.labels

  dynamic "rule" {
    for_each = var.rule
    content {
      direction   = rule.value["direction"]
      protocol    = rule.value["protocol"]
      port        = rule.value["port"]
      source_ips  = rule.value["source_ips"]
      description = lookup(rule.value, "description", null)
    }
  }
}
