resource "digitalocean_droplet" "web1" {
    image = "ubuntu-20-04-x64"
    name = "web1"
    region = "sgp1"
    size = "s-2vcpu-2gb"
    ssh_keys = [
      data.digitalocean_ssh_key.aipc.id
    ]
}
