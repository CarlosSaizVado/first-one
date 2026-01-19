
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
  default     = "Proyect_RG"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "East US"
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
  default     = "Carlos"
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  default     = "Carlos1234!"
  sensitive   = true
}

variable "object_id" {
  description = "The object ID of the user or service principal."
  type        = string
  default     = "6a3dd346-da2d-4020-a910-5dea5bdf0b4a"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default = {
    Environment = "Test"
  }
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "VM"
}

/*subscription_id: Used to specify the Azure subscription.
resource_group_name: Defines the resource group name.
location: Specifies the Azure region for resource deployment.
vm_size: Sets the size of the virtual machine.
admin_username: Provides the admin username for VMs.
tags: Allows tagging resources with a map of key-value pairs.*/