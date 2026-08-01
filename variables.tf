variable "environment" {
  type        = string
  description = "Target deployment environment (nonprod or prod)."
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources into."
  default     = "eastus"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet."
}

variable "subnet_prefix" {
  type        = string
  description = "Prefix for the subnet."
  default     = "10.0.1.0/24"
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group."
}

variable "vm_name" {
  type        = string
  description = "Name of the Azure virtual machine."
}

variable "vm_size" {
  type        = string
  description = "Size of the Azure virtual machine."
  default     = "Standard_B1s"
}

variable "vm_admin_username" {
  type        = string
  description = "Admin username for the Azure virtual machine."
  default     = "azureuser"
}

variable "vm_admin_password" {
  type        = string
  description = "Admin password for the Azure virtual machine. Configure via TF_VAR_vm_admin_password in workflow or environment."
  sensitive   = true
}

variable "tags" {
  type        = map(string)
  description = "Common tags for all resources."
  default     = {}
}
