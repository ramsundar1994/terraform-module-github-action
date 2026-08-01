output "subnet_id" {
  description = "ID of the subnet created for the environment."
  value       = azurerm_subnet.main.id
}
