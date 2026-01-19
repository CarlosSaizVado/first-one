# Habilitar Microsoft Defender for Cloud en la suscripción
resource "azurerm_security_center_subscription_pricing" "defender" {
  for_each = toset(var.resource_types)  # Lista de tipos de recurso a proteger

  resource_type = each.value
  tier          = "Standard"
}
