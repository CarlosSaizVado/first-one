output "storage_account_name" {
  value = azurerm_storage_account.Storage.name
}

output "storage_account_primary_connection_string" {
  value = azurerm_storage_account.Storage.primary_connection_string
}

output "storage_container_name" {
  value = azurerm_storage_container.Container.name
}