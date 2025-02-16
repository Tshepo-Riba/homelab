variable "name" {
  description = "Name for the NAS VM"
  type        = string
}

variable "memory" {
  description = "Memory in MB for the NAS VM"
  type        = number
}

variable "cores" {
  description = "Number of cores for the NAS VM"
  type        = number
}

variable "net_bridge" {
  description = "Proxmox network bridge name"
  type        = string
}

variable "disk_size" {
  description = "Disk size for the NAS VM"
  type        = string
}

variable "iso" {
  description = "ISO image for installing OpenMediaVault"
  type        = string
}

variable "usb_serials" {
  description = "List of USB HDD serial numbers for passthrough to the NAS VM"
  type        = list(string)
}

variable "ipconfig0" {
  description = "Cloud-init IP configuration for the NAS VM (e.g., 'ip=10.100.0.40/24,gw=10.100.0.1')"
  type        = string
}
