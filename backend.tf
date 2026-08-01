terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend"
    storage_account_name = "terraformbackendstore"
    container_name       = "tfstate"
    key                  = "terraform-module-github-action.tfstate"
  }
}
