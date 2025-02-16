variable "hostname" {
  description = "Hostname for the Authentik container"
  type        = string
}

variable "memory" {
  description = "Memory in MB for the container"
  type        = number
}

variable "cores" {
  description = "Number of cores for the container"
  type        = number
}

variable "net_bridge" {
  description = "Proxmox network bridge name"
  type        = string
}

variable "static_ip" {
  description = "Static IP address (with CIDR) for the container (e.g., 10.100.0.20/24)"
  type        = string
}

variable "password" {
  description = "Container password"
  type        = string
  sensitive   = true
}

variable "production" {
  description = "Flag to trigger production-specific configurations"
  type        = bool
  default     = false
}
