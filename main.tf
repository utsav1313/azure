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
}
