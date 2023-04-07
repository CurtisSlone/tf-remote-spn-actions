#
# Create app registration
#

resource "azuread_application" "ghactions" {
  display_name = "github-actions"
}

#
# Create Secret
#
resource "azuread_application_password" "GHAPass" {
  application_object_id = azuread_application.ghactions.id
}

#
# Create SPN
#
resource "azuread_service_principal" "GHASPN" {
  application_id = azuread_application.ghactions.id
}

#
# Assign Contributor Access to current subscription
#
resource "azurerm_role_assignment" "current" {
    scope = data.azurerm_client_config.current.subscription_id
    role_definition_name = "Contributor"
    principal_id = azuread_service_principal.GHASPN.id
}