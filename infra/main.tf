{
  features {}
}
resource "azurerm_resource_group" "hub_rg" {
  name     = "smart-invite-hub-rg"
  location = "UK South"
}

resource "azurerm_container_registry" "acr" {
  name                = "smartinviteacr${random_integer.unique_suffix.result}"
  resource_group_name = azurerm_resource_group.hub_rg.name
  location            = azurerm_resource_group.hub_rg.location
  sku                 = "Basic"
  admin_enabled       = true
}

# Generate a unique suffix for the container registry name, this allows it to be automation friendly as you don't have to manually make sure its unique
resource "random_integer" "unique_suffix" {
  min = 10000
  max = 99999
}