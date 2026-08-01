output "resource_group_name" {
  description = "Resource group name created for the environment."
  value       = azurerm_resource_group.main.name
}

output "vm_public_ip" {
  description = "Public IP address assigned to the Azure VM."
  value       = module.vm.public_ip_address
}

output "subnet_id" {
  description = "Subnet ID created by the network module."
  value       = module.network.subnet_id
}
