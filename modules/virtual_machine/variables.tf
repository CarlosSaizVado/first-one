variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine will be created."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "A map of tags to assign to the virtual machine."
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "The location/region where the Key Vault will be created."
  type        = string
}