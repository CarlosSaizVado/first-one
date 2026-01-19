variable "resource_types" {
  type        = list(string)
  description = "Tipos de recursos para habilitar Microsoft Defender for Cloud (ej: VirtualMachines, StorageAccounts, SqlServers)"
  default     = ["VirtualMachines", "StorageAccounts", "SqlServers"]
}
