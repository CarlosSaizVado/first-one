provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions    = ["Get", "List", "Create", "Delete", "Update"]
    secret_permissions = ["Get", "List", "Set", "Delete", "Recover", "Purge"]
  }
}

resource "azurerm_key_vault_secret" "subscription_id" {
  name         = "subscription-id"
  value        = var.az_subscription_id
  key_vault_id = azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "tenant_id" {
  name         = "tenant-id"
  value        = var.tenant_id
  key_vault_id = azurerm_key_vault.key_vault.id
}