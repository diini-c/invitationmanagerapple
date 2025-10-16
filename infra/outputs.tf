output "resource_group_name" {
  description = "The name of the hub resource group"
  value       = azurerm_resource_group.hub_rg.name
}

output "acr_login_server" {
  description = "The login server for the Azure Container Registry"
  value       = azurerm_container_registry.acr.login_server
}

output "acr_name" {
  description = "The name of the Azure Container Registry"
  value       = azurerm_container_registry.acr.name
}
