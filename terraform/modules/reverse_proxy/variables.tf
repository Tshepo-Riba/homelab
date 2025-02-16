variable "hostname" {
  description = "Hostname for the Traefik reverse proxy container"
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
  description = "Static IP address (with CIDR) for the container (e.g., 10.100.0.30/24)"
  type        = string
}

variable "password" {
  description = "Container password"
  type        = string
  sensitive   = true
}

variable "ssl_email" {
  description = "Email for Let's Encrypt registration"
  type        = string
}

variable "domain" {
  description = "Domain name to be served by Traefik (e.g., example.com)"
  type        = string
}
