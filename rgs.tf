terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg1"
  location = "West Europe"
}
resource "azurerm_resource_group" "example1" {
  name     = "rg2"
  location = "West Europe"
}
