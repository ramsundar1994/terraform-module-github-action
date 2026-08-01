resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source            = "./modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location          = var.location
  environment       = var.environment
  vnet_name         = var.vnet_name
  vnet_address_space = var.vnet_address_space
  subnet_name       = var.subnet_name
  subnet_prefix     = var.subnet_prefix
  nsg_name          = var.nsg_name
  tags              = var.tags
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  environment         = var.environment
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_password
  subnet_id           = module.network.subnet_id
  public_ip_name      = "${var.environment}-pip"
  tags                = var.tags
}
