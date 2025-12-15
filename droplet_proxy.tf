module "proxy_vm" {
  source = "./modules/vm"

  image  = local.IMAGE.DEBIAN
  prefix = local.prefix
  name   = "proxy"
  region = local.REGION
  size   = local.SIZE.SMALL
  ssh_keys = [
    digitalocean_ssh_key.default.fingerprint,
    data.digitalocean_ssh_key.ondrejsika.fingerprint,
  ]
}
