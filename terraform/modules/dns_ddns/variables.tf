variable "hostname" {
  description = "Hostname for the DNS/DDNS container"
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
  description = "Static IP address (with CIDR) for the container (e.g., 10.100.0.10/24)"
  type        = string
}

variable "password" {
  description = "Container password"
  type        = string
  sensitive   = true
}

variable "tsig_secret" {
  description = "TSIG secret for dynamic DNS updates"
  type        = string
  sensitive   = true
}
