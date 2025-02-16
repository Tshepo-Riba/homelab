variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "pm_user" {
  description = "Proxmox username"
  type        = string
}

variable "pm_password" {
  description = "Proxmox password"
  type        = string
  sensitive   = true
}

variable "pm_insecure" {
  description = "Disable SSL verification if needed (set false in production)"
  type        = bool
  default     = false
}

variable "container_password" {
  description = "Default password for LXC containers (store securely)"
  type        = string
  sensitive   = true
}

variable "dns_tsig_secret" {
  description = "TSIG key secret for DNS dynamic updates"
  type        = string
  sensitive   = true
}

variable "ssl_email" {
  description = "Email for SSL certificate registration"
  type        = string
}

variable "reverse_domain" {
  description = "Domain for the reverse proxy and internal DNS (e.g., example.com)"
  type        = string
}

variable "omv_iso" {
  description = "ISO image path for installing OpenMediaVault (e.g., local:iso/OMV-*.iso)"
  type        = string
}

variable "usb_serials" {
  description = "List of USB HDD serial numbers for passthrough to the NAS VM"
  type        = list(string)
}
