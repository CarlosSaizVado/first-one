variable "vault_name" {
  type        = string
  description = "Nombre del Recovery Services Vault"
  default     = "RSV-1" 
}

variable "sku" {
  type        = string
  description = "SKU del Vault: Standard o Premium"
  default     = "Standard"
}

variable "policy_name" {
  type        = string
  description = "Nombre de la política de backup para VMs"
  default     = "RSV-1-Policy"
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
