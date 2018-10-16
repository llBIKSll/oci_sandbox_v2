
## Server Configuration
## Cloud-Init Ex https://cloudinit.readthedocs.io/en/latest/topics/examples.html

# Configuratio of Bastion Host
data "template_file" "bootstrap_forwardproxy_server" {
  template = <<YAML
#cloud-config

repo_update: true

repo_upgrade: all

package_upgrade: true

packages:
- squid

runcmd:
- echo "#############Starting Squid Service##########################################"
- sudo systemctl start squid

YAML
}