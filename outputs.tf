output "resource_group_id" {
  description = "Resource Group ID"
  value       = concat(azurerm_resource_group.rg.*.id, [""])[0]
}

output "storage_account_id" {
  description = "Storage Account ID"
  value       = azurerm_storage_account.sa.id 
}
