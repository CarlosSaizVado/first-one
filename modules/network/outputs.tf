output "vnet_id" {
  value = azurerm_virtual_network.Proyecto_vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "nsg_id" {
  value = azurerm_network_security_group.NSG.id
}

output "nic_id" {
  value = azurerm_network_interface.NIC.id
}