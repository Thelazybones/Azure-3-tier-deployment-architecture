resource "azurerm_key_vault" "key_vault" {
name = var.keyvault_name
location = var.location
resource_group_name = var.resource_group
sku_name = var.sku_name
}

resource "azurerm_key_vault_secret" "kv_secret" {
  name = var.kv_secret
  key_vault_id = azurerm_key_vault.key_vault.id

  depends_on = [ 
    azurerm_key_vault.key_vault 
    ]
  
}