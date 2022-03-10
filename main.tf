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
resource "azurerm_app_service_plan" "utsav_app" {
  name                = "utsav_app"
  location            = azurerm_resource_group.utsav_group.location
  resource_group_name = azurerm_resource_group.utsav_group.name

  sku {
    tier = "Standard"
    size = "S1"
 }
resource "azurerm_storage_account" "utsav_group" {
  name                     = "demo_storage"
  resource_group_name      = azurerm_resource_group.utsav_group.name
  location                 = azurerm_resource_group.utsav_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  
}

resource "azurerm_storage_container" "utsav_group_demo" {
  name                  = "qwe"
  storage_account_name  = azurerm_storage_account.utsav_group.name
  container_access_type = "private"
}























































