variable "name" {
  type        = string
  description = "Name of the ssh public key"
}

variable "public_key" {
  type        = string
  description = "Public key as defined in the authorized_keys file format. See sshd(8)"
}
