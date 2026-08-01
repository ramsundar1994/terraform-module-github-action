variable "resource_group_name" {
  type        = string
  description = "Resource group name for network resources."
}

variable "location" {
  type        = string
  description = "Azure region for network resources."
}

variable "environment" {
  type        = string
  description = "Deployment environment name."
}

variable "vnet_name" {
  type        = string
  description = "Virtual network name."
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Subnet name."
}

variable "subnet_prefix" {
  type        = string
  description = "Subnet prefix."
  default     = "10.0.1.0/24"
}

variable "nsg_name" {
  type        = string
  description = "Network security group name."
}

variable "tags" {
  type        = map(string)
  description = "Tags for network resources."
  default     = {}
}
