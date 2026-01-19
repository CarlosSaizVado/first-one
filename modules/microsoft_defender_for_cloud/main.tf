# Habilitar Microsoft Defender for Cloud en la suscripción
resource "azurerm_security_center_subscription_pricing" "defender" {
  for_each = toset(var.resource_types)  # Lista de tipos de recurso a proteger

  resource_type = each.value
  tier          = "Standard"
}

# Configurar políticas de seguridad recomendadas
resource "azurerm_policy_assignment" "defender_recommendations" {
  name                 = "DefenderForCloudRecommendations"
  scope                = data.azurerm_subscription.primary.id
  policy_definition_id = data.azurerm_policy_definition.defender_recommendations.id
}

# Obtener la definición de la política de recomendaciones de Microsoft Defender for Cloud
data "azurerm_policy_definition" "defender_recommendations" {
  name = "SecurityCenterBuiltIn"
}