output "server_id" {
  value = hcloud_server.this.*.id
}

output "server_name" {
  value = hcloud_server.this.*.name
}

output "server_type" {
  value = hcloud_server.this.*.server_type
}

output "server_location" {
  value = hcloud_server.this.*.location
}

output "server_datacenter" {
  value = hcloud_server.this.*.datacenter
}

output "server_ipv4_address" {
  value = hcloud_server.this.*.ipv4_address
}

output "server_ipv6_address" {
  value = hcloud_server.this.*.ipv6_address
}

output "server_labels" {
  value = hcloud_server.this.*.labels
}
