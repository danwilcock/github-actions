# Terraform Block
terraform {
  required_version = "~> 1.2.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
  }

  backend "azurerm" {}
}


resource "azurerm_resource_group" "name" {
  name     = var.env_code
  location     = "uksouth"
}