output "enabled_defender_types" {
  value       = azurerm_security_center_subscription_pricing.defender[*].resource_type
  description = "Tipos de recursos con Microsoft Defender for Cloud habilitado"
}
