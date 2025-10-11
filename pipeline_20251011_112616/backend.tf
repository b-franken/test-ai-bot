terraform {
  backend "azurerm" {
    resource_group_name   = "myResourceGroup"
    storage_account_name  = "mystorageaccount"
    container_name        = "mycontainer"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}