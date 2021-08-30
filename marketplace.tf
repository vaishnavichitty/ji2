terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_template_deployment" "test6" {
  name                          = "test6"
  resource_group_name = "demo1"
  template_body            = file("plocies.json")

  parameters    = {
   "lab_name"  = "lab2"
  }
  deployment_mode = "Incremental"
}