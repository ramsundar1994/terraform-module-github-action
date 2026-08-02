environment = "prod"
resource_group_name = "rg-prod-network"
vnet_name = "vnet-prod"
subnet_name = "snet-prod"
nsg_name = "nsg-prod"
vm_name = "vm-prod"
vm_size = "Standard_B2s"
vm_admin_username = "azureuser"
location = "eastus"
tags = {
  environment = "prod"
  project     = "terraform-module-github-action"
}
