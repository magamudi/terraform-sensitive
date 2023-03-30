resource "digitalocean_domain" "default" {
   name = "truscrow.com"
   ip_address = digitalocean_loadbalancer.www-lb.ip
}