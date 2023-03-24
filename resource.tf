# images
data "digitalocean_ssh_key" "aipc" {
  name = var.digitalocean_ssh_key
}

data "digitalocean_image" "mynginx" {
  name = "mynginx"
}


resouce "digitalocean_droplt" "mynginx" {
  name     = "mynginx"
  size     = var.do_size
  image    = data.digitalocean.image.id
  region   = var.do_region
  ssh_keys = [data.digitalocean_ssh_key.aipc.id]
}

output "nginx_ip" {
  value = digitalocean_droplet.mynginx.ipv4_address
}