resource "proxmox_qemu" "nas" {
  name        = var.name
  cores       = var.cores
  memory      = var.memory
  disk {
    id      = 0
    type    = "scsi"
    storage = "local-lvm"
    size    = var.disk_size
  }
  network {
    model   = "virtio"
    bridge  = var.net_bridge
  }
  cdrom     = var.iso
  boot      = "cdn"
  agent     = 1  # Enable QEMU Guest Agent for this VM
  ipconfig0 = var.ipconfig0  # e.g., "ip=10.100.0.40/24,gw=10.100.0.1"

  # USB passthrough using serial numbers (assumes two devices)
  hostpci0 = "usb:serial=${var.usb_serials[0]}"
  hostpci1 = "usb:serial=${var.usb_serials[1]}"
}

output "nas_ip" {
  value = "Configured via cloud-init: ${var.ipconfig0}"
}
