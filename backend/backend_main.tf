provider "azurerm" {
  features {}
}

module "backend_resource_group" {
  source         = "./modules/common/resource_group"
  name           = var.backend_storage_account.resource_group_name
  location       = var.general.location
  tags = {
    enviroment = var.general.enviroment
  }
}

module "backend_storage_account"{
    source = "../modules/storage"
    name = var.backend_storage_account.name
    resource_group_name = module.backend_resource_group.name
    account_tier = "standard"

    containers = [{
        name = var.backend_storage_account.container_name
    }]
}