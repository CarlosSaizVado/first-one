resource "azurerm_firewall" "Main_Firewall" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "AZFW_VNet"
  threat_intel_mode   = var.threat_intel_mode

  ip_configuration {
    name                 = "WAF_configuration"
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_id
  }
}

# Ejemplo mínimo de regla de red
resource "azurerm_firewall_network_rule_collection" "Regla_1" {
  name                = "network-rule"
  azure_firewall_name = azurerm_firewall.Regla_1.name
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

resource "azurerm_firewall_policy" "Policy_1" {
  name                = var.firewall_policy_name
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_firewall_policy_rule_collection_group" "RCG_1" {
  name                 = "${var.firewall_policy_name}-rcg"
  azure_firewall_policy_id = azurerm_firewall_policy.RCG_1.id
  priority             = 100

  firewall_policy_rule_collection {
    name     = "Allow-HTTP-Collection"
    priority = 100
    action   = "Allow"

    rule {
      name             = "Allow-HTTP"
      source_addresses = ["*"]
      target_fqdns     = ["*.example.com"]
      protocols {
        type = "Http"
        port = 80
      }
    }
  }
}