terraform {
  backend "azurerm" {
    resource_group_name  = "smart-invite-rg"
    storage_account_name = "smartinviteblobnikah"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}