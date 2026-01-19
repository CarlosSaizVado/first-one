# Crear Recovery Services Vault
resource "azurerm_recovery_services_vault" "RSV-1" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
}

# Crear política de backup mínima para VMs
resource "azurerm_backup_policy_vm" "RSV-1-policy" {
  name                = var.policy_name
  resource_group_name = var.resource_group_name
  recovery_vault_name = azurerm_recovery_services_vault.RSV-1.name
  timezone            = var.timezone

  backup {
    frequency = "Daily"
    time      = var.backup_time
  }

  retention_daily {
    count = var.retention_days
  }
}
# Asociar VMs al Recovery Services Vault con la política de backup
resource "azurerm_backup_protected_vm" "RSV-1-protected-vm" {
  count               = length(var.vm_ids)
  resource_group_name = var.resource_group_name
  recovery_vault_name = azurerm_recovery_services_vault.RSV-1.name
  source_vm_id        = var.vm_ids[count.index]
  backup_policy_id    = azurerm_backup_policy_vm.RSV-1-policy.id
}
# Salida del ID del Recovery Services Vault
output "recovery_services_vault_id" {
  value = azurerm_recovery_services_vault.RSV-1.id
}
# Salida del ID de la política de backup
output "backup_policy_vm_id" {
  value = azurerm_backup_policy_vm.RSV-1-policy.id
} 
# Salida de los IDs de las VMs protegidas
output "protected_vm_ids" {
  value = azurerm_backup_protected_vm.RSV-1-protected-vm[*].id
}
