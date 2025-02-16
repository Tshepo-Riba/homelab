output "dns_ddns_ip" {
  value = proxmox_lxc.dns_ddns.netif[0].ip
}
