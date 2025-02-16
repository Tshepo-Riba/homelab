output "reverse_proxy_ip" {
  value = proxmox_lxc.reverse_proxy.netif[0].ip
}
