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