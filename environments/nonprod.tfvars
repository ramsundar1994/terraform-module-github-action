environment = "nonprod"
resource_group_name = "rg-nonprod-network"
vnet_name = "vnet-nonprod"
subnet_name = "snet-nonprod"
nsg_name = "nsg-nonprod"
vm_name = "vm-nonprod"
vm_size = "Standard_B1s"
vm_admin_username = "azureuser"
location = "eastus"
tags = {
  environment = "nonprod"
  project     = "terraform-module-github-action"
}
