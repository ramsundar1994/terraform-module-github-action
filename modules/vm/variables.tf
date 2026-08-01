variable "resource_group_name" {
  type        = string
  description = "Resource group name for VM resources."
}

variable "location" {
  type        = string
  description = "Azure region for VM resources."
}

variable "environment" {
  type        = string
  description = "Deployment environment name."
}

variable "vm_name" {
  type        = string
  description = "Virtual machine name."
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine."
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the virtual machine."
}

variable "admin_password" {
  type        = string
  description = "Admin password for the virtual machine."
  sensitive   = true
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID where the VM NIC will attach."
}

variable "public_ip_name" {
  type        = string
  description = "Public IP name for the VM."
}

variable "tags" {
  type        = map(string)
  description = "Tags for VM resources."
  default     = {}
}
