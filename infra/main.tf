provider "azurerm" {
  features {}
  subscription_id = "f230c61f-0025-4bd8-a85c-269663fb293b"
}

resource "azurerm_resource_group" "hub_rg" {
  name     = "smart-invite-hub-rg"
  location = "UK South"
}

resource "azurerm_container_registry" "acr" {
  name                = "smartinviteacr59602"
  resource_group_name = azurerm_resource_group.hub_rg.name
  location            = azurerm_resource_group.hub_rg.location
  sku                 = "Basic"
  admin_enabled       = true

  lifecycle {
    prevent_destroy = true
  }
}