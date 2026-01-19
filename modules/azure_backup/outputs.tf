output "vault_id" {
  value       = azurerm_recovery_services_vault.this.id
  description = "ID del Recovery Services Vault creado"
}

output "vault_name" {
  value       = azurerm_recovery_services_vault.this.name
  description = "Nombre del Recovery Services Vault"
}

output "backup_policy_id" {
  value       = azurerm_backup_policy_vm.this.id
  description = "ID de la política de backup creada"
}
