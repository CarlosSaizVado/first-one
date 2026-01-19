resource "azurerm_firewall" "this" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "AZFW_VNet"
  threat_intel_mode   = var.threat_intel_mode

  ip_configuration {
    name                 = "configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_id
  }
}

# Ejemplo mínimo de regla de red
resource "azurerm_firewall_network_rule_collection" "example" {
  name                = "network-rule"
  azure_firewall_name = azurerm_firewall.this.name
  resource_group_name = var.resource_group_name
  priority            = 100
  action              = "Allow"

  rule {
    name                  = "Allow-DNS"
    protocol              = "UDP"
    source_addresses      = ["*"]
    destination_addresses = ["8.8.8.8"]
    destination_ports     = ["53"]
  }
}
