variable "servers_to_create" {
  type        = number
  default     = 1
  description = "Number of servers to create"
}

variable "name_prefix" {
  type        = string
  default     = ""
  description = "Name prefix of the server. Appended with a suffix based on count"
}

variable "image" {
  type        = string
  description = "Name of the image or ID of the snapshot with which to create the server"
}

variable "server_type" {
  type        = string
  description = "Type of server to create"
}

variable "datacenter" {
  type        = string
  description = "Which datacenter to create the server in"
}

variable "user_data" {
  type        = string
  default     = ""
  description = "User data to be passed to the server at boot time"
}

variable "ssh_keys" {
  type        = list(string)
  default     = []
  description = "List of SSH public keys IDs to pass to the server"
}

variable "firewall_ids" {
  type        = list(string)
  default     = []
  description = "List of firewall IDs to attach to the server"
}

variable "delete_protection" {
  type        = bool
  default     = true
  description = "Whether to enable deletion protection"
}

variable "rebuild_protection" {
  type        = bool
  default     = true
  description = "Whether to enable rebuild protection"
}

variable "labels" {
  type        = map(any)
  default     = {}
  description = "Map of labels (key, value) to attach to the server"
}
