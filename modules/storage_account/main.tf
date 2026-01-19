provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "Storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "Container" {
  name                  = "container"
  container_access_type = "private"
  depends_on            = [azurerm_storage_account.Storage]
  storage_account_id    = azurerm_storage_account.Storage.id
}