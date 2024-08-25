output "vm_public_ip" {
  description   = "Public IP of the VM"
  value         = azurerm_public_ip.pip.ip_address
}

output "url" {
  description   = "Public URL of the site hosted on the VM"
  value         = "http://${azurerm_public_ip.pip.ip_address}"
}

output "private_key" {
  description   = "SSH private key"
  value         = tls_private_key.this.private_key_pem
  sensitive     = true
}

output "ssh_command" {
  description   = "SSH command to connect to the VM"
  value = <<-EOF
    tofu output -raw private_key > key.pem
    chmod 0600 key.pem
    ssh -i key.pem adminuser@${azurerm_public_ip.pip.ip_address}
  EOF
}