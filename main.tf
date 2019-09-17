resource "azurerm_resource_group" "main" {
  name     = "${var.environ}-resources"
  location = var.rg_location
  tags = {
    environment = var.environ
  }
}

module "my_vm" {
  source = "./VM/"
  location = azurerm_resource_group.main.location
  name = azurerm_resource_group.main.name
  netid = module.my_vnet.network_interface_id
  prefix = var.prefix
  environ = var.environ
}

module "my_vnet" {
  source = "./Vnet/"
  location = azurerm_resource_group.main.location
  name = azurerm_resource_group.main.name
  prefix = var.prefix
}

provider "azurerm" {
  version = "=1.33.1"
}
