output "firewall_name" {
  value = hcloud_firewall.this.name
}

output "firewall_id" {
  value = hcloud_firewall.this.id
}

output "firewall_rules" {
  value = hcloud_firewall.this.rule
}
