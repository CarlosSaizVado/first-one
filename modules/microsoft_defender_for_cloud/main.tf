# Habilitar Microsoft Defender for Cloud en la suscripción
resource "azurerm_security_center_subscription_pricing" "defender" {
  for_each = toset(var.resource_types)  # Lista de tipos de recurso a proteger

  resource_type = each.value
  tier          = "Standard"
}
# Configurar políticas de seguridad recomendadas
resource "azurerm_policy_assignment" "defender_recommendations" {
    name                 = "DefenderSecurityRecommendations"
    scope                = var.subscription_id
    policy_definition_id = data.azurerm_policy_definition.defender_recommendations.id
    description          = "Asignación de políticas para recomendaciones de seguridad de Microsoft Defender for Cloud"
    }   
data "azurerm_policy_definition" "defender_recommendations" {
    name = "SecurityCenterBuiltIn"
    }                       
# Configurar alertas de seguridad y notificaciones
resource "azurerm_security_center_contact" "security_contact" {
    email               = var.security_contact_email
    phone               = var.security_contact_phone
    alert_notifications = true
    alerts_to_admins    = true
    }   