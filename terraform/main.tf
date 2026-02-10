resource "azurerm_resource_group" "tictactoe_rg" {
  name     = "resource_group"
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  resource_group_name      = azurerm_resource_group.tictactoe_rg.name
  account_replication_type = "LRS"
  account_tier             = "Standard"
  name                     = "straccfortictactoe"
  location                 = var.location
}

resource "azurerm_storage_account_static_website" "website" {
  storage_account_id = azurerm_storage_account.storage_account.id
  index_document     = "index.html"
  error_404_document = "index.html"
}