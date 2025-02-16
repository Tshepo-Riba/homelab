resource "proxmox_lxc" "dns_ddns" {
  hostname   = var.hostname
  ostemplate = "local:vztmpl/debian-11-standard_11.0-1_amd64.tar.gz"
  cores      = var.cores
  memory     = var.memory
  swap       = 512
  password   = var.password
  netif {
    name    = "eth0"
    bridge  = var.net_bridge
    ip      = var.static_ip
  }
  features {
    nesting = true
  }
  unprivileged = true
  rootfs       = "local-lvm:8"
}

output "dns_ddns_ip" {
  value = proxmox_lxc.dns_ddns.netif[0].ip
}
