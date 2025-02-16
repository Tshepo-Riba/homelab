output "dns_ddns_ip" {
  value = module.dns_ddns.dns_ddns_ip
}

output "nas_vm_ip" {
  value = module.nas.nas_ip
}

output "authentik_ip" {
  value = module.authentik.authentik_ip
}

output "reverse_proxy_ip" {
  value = module.reverse_proxy.reverse_proxy_ip
}
