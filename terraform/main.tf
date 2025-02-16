
module "dns_ddns" {
  source      = "./modules/dns_ddns"
  hostname    = "dns-ddns"
  memory      = 1024
  cores       = 1
  net_bridge  = "vmbr0"
  static_ip   = "10.100.0.10/24"
  password    = var.container_password
  tsig_secret = var.dns_tsig_secret
}

module "nas" {
  source       = "./modules/nas"
  name         = "omv-nas"
  memory       = 4096
  cores        = 2
  net_bridge   = "vmbr0"
  disk_size    = "64G"
  iso          = var.omv_iso
  ipconfig0    = "ip=10.100.0.40/24,gw=10.100.0.1"
  usb_serials  = var.usb_serials
}

module "authentik" {
  source      = "./modules/authentik"
  hostname    = "authentik"
  memory      = 2048
  cores       = 1
  net_bridge  = "vmbr0"
  static_ip   = "10.100.0.20/24"
  password    = var.container_password
  production  = true
}

module "reverse_proxy" {
  source      = "./modules/reverse_proxy"
  hostname    = "traefik"
  memory      = 1024
  cores       = 1
  net_bridge  = "vmbr0"
  static_ip   = "10.100.0.30/24"
  password    = var.container_password
  ssl_email   = var.ssl_email
  domain      = var.reverse_domain
}
