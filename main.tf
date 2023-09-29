terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "RG1" {
    name = "RG1"
 #   resource_group_name = "RG1"
}

resource "azurerm_virtual_network" "VN2" {
    resource_group_name = data.azurerm_resource_group.RG1.id
    name = "VN2"
    location = "uksouth"
    address_space = [ "10.0.0.10/16" ]
}