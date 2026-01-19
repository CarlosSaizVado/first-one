variable "vault_name" {
  type        = string
  description = "Nombre del Recovery Services Vault"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group donde se creará el Vault"
}

variable "sku" {
  type        = string
  description = "SKU del Vault: Standard o Premium"
  default     = "Standard"
}

variable "policy_name" {
  type        = string
  description = "Nombre de la política de backup para VMs"
}

variable "timezone" {
  type        = string
  description = "Zona horaria para ejecutar los backups"
  default     = "UTC"
}

variable "backup_time" {
  type        = string
  description = "Hora del día para ejecutar el backup (HH:MM)"
  default     = "23:00"
}

variable "retention_days" {
  type        = number
  description = "Número de días para retener los backups"
  default     = 30
}
