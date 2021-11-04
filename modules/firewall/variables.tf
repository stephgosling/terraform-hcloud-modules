variable "name" {
  type    = string
  default = "Name of the Firewall"
}

variable "labels" {
  type        = any
  default     = {}
  description = "User-defined labels (key-value pairs) to attach to the resource"
}

variable "rule" {
  type        = any
  default     = {}
  description = "List of maps representing firewall rules"
}
