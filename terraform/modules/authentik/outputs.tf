output "authentik_ip" {
  value = proxmox_lxc.authentik.netif[0].ip
}
