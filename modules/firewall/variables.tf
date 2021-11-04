variable "name" {
  type    = string
  default = "Name of the firewall"
}

variable "labels" {
  type        = any
  default     = {}
  description = "User-defined labels (key-value pairs) to attach to the resource"
}

variable "inbound_rules" {
  type        = any
  default     = {}
  description = "List of maps representing inbound ('in') firewall rules"
}

variable "outbound_rules" {
  type        = any
  default     = {}
  description = "List of maps representing outbound ('out') firewall rules"
}
