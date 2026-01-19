variable "firewall_name" {
  type        = string
  description = "Nombre del Azure Firewall"
}

variable "location" {
  type        = string
  description = "Región de Azure"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group donde se creará el firewall"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subnet donde se desplegará el firewall"
}

variable "public_ip_id" {
  type        = string
  description = "ID de la IP pública asociada al firewall"
}

variable "threat_intel_mode" {
  type        = string
  description = "Modo de inteligencia de amenazas del firewall (Alert, Deny, Off)"
  default     = "Alert"
}
variable "firewall_name"{
  type        = string
  description = "Nombre del Azure Firewall"
  default     = "Main_Firewall"
}
variable "firewall_policy_name" {
  type        = string
  description = "Nombre de la política del Azure Firewall"
  default     = "Policy_1"
}