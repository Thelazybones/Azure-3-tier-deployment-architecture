resource "azurerm_storage_account" "storage_account" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  account_tier = var.account_tier
}

resource "azurerm_storage_container" "blob_container"{
    name = var.blob_container
    storage_account_name = azurerm_storage_account.storage_account_name
}