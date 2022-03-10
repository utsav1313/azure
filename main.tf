terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
  features {}


}

resource "azurerm_resource_group" "utsav_group" {
  name     = "utsav_group"
  location = "central india"
}
resource "azurerm_app_service_plan" "app_service" {
  name                = "demo_app"
  location            = azurerm_resource_group.utsav_group.location
  resource_group_name = azurerm_resource_group.utsav_group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
resource "azurerm_app_service" "utsavpli13131" {
  name                = "utsavpli13131"
  location            = azurerm_resource_group.utsav_group.location
  resource_group_name = azurerm_resource_group.utsav_group.name
  app_service_plan_id = azurerm_app_service_plan.app_service.id
}

resource "azurerm_storage_account" "utsav_group" {
  name                     = "apiutsavstorage13313"
  resource_group_name      = azurerm_resource_group.utsav_group.name
  location                 = azurerm_resource_group.utsav_group.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "demo"
  }
}






















































