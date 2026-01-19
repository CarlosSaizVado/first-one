output "firewall_id" {
  value       = azurerm_firewall.this.id
  description = "ID del Azure Firewall creado"
}

output "firewall_name" {
  value       = azurerm_firewall.this.name
  description = "Nombre del Azure Firewall"
}

output "firewall_ip" {
  value       = azurerm_firewall.this.ip_configuration[0].public_ip_address_id
  description = "ID de la IP pública asociada al firewall"
}
