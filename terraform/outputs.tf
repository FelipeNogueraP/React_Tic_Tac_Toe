output "storage_account_name" {
  description = "Name of Storage Account"
  value       = azurerm_storage_account.storage_account.name
}

output "website_url" {
  description = "Webpage URL"
  value       = azurerm_storage_account.storage_account.primary_web_endpoint
}
