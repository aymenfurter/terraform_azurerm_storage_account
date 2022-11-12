resource "azurerm_resource_group" "rg" {
  count = var.create_resource_group ? 1 : 0

  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name 	   = var.create_resource_group ? azurerm_resource_group.rg[0].name : var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type  
  tags = var.tags
}
