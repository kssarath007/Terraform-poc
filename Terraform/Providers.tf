terraform {
  required_providers {
    azurerm = "~> 2.78.0"
  }
}
provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  features {} 
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group
  location = var.location
  tags  = var.tags  
}

