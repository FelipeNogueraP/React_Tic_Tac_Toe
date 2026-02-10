terraform {
  backend "azurerm" {
    resource_group_name  = "control-legal-tfstate-rg"
    storage_account_name = "controllegalstate01"
    container_name       = "tictac"
    key                  = "dev.tfstate"
  }
}
