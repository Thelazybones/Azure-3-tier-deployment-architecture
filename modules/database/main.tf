resource "azurerm_sql_server" "server" {
    name = var.server_database
    resource_group_name = var.resource_group
    location = var.location
    version = var.server_database_version
    administrator_login = var.server_database_admin
    administrator_login_password = var.server_database_password
}

resource "azurerm_sql_database" "db" {
  name                = "db"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.server.name
}

