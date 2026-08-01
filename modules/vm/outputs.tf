output "public_ip_address" {
  description = "Public IP address for the deployed VM."
  value       = azurerm_public_ip.main.ip_address
}

output "network_interface_id" {
  description = "Network interface ID attached to the VM."
  value       = azurerm_network_interface.main.id
}
