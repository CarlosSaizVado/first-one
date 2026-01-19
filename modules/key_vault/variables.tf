variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Key Vault will be created."
  type        = string
}

variable "location" {
  description = "The location/region where the Key Vault will be created."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Key Vault."
  type        = map(string)
  default     = {}
}

variable "tenant_id" {
  description = "The tenant ID for the Key Vault."
  type        = string
}

variable "object_id" {
  description = "The object ID for the access policy."
  type        = string
}

variable "az_subscription_id" {
  description = "The Azure subscription ID to store as a secret."
  type        = string
}