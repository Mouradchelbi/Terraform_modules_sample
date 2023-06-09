terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.88.1"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "ResourceGroup" {
  source = "./ResourceGroup"
  base_name = "TerraforMouchel"
  location = "West US"
}

module "StorageAccount" {
  source = "./StorageAccount"
  base_name = "TerraforMouchel"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = "West US"
}