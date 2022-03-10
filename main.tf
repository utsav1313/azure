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