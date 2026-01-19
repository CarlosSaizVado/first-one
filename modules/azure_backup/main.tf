# Crear Recovery Services Vault
resource "azurerm_recovery_services_vault" "this" {
  name                = var.vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
}

# Crear política de backup mínima para VMs
resource "azurerm_backup_policy_vm" "this" {
  name                = var.policy_name
  resource_group_name = var.resource_group_name
  recovery_vault_name = azurerm_recovery_services_vault.this.name
  timezone            = var.timezone

  backup {
    frequency = "Daily"
    time      = var.backup_time
  }

  retention_daily {
    count = var.retention_days
  }
}
