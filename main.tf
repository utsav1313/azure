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
}
  
 
resource "azurerm_storage_account" "demo_storage" {
  name                     = "demo_storage"
  resource_group_name      = azurerm_resource_group.utsav_group.name
  location                 = azurerm_resource_group.utsav_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  
}

resource "demo_storage" "utsav_group" {
  name                  = "utsav_group"
  storage_account_name  = azurerm_storage_account.utsav_group.name
  container_access_type = "private"
}
resource "azurerm_resource_group" "group1" {
  name     = var.
  location = "West Europe"
}
resource "azurerm_resource_group" "group2" {
  name     = var.qa_var
  location = "West Europe"
}























































