
variable "az_subscription_id" {
  description = "The Azure subscription ID where resources will be created."
  type        = string
}

variable "tenant_id" {
  description = "The Azure Active Directory tenant ID."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to create or use."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be deployed."
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
  description = "A map of tags to assign to resources."
  type        = map(string)
  default = {}
}

/*subscription_id: Used to specify the Azure subscription.
resource_group_name: Defines the resource group name.
location: Specifies the Azure region for resource deployment.
vm_size: Sets the size of the virtual machine.
admin_username: Provides the admin username for VMs.
tags: Allows tagging resources with a map of key-value pairs.*/