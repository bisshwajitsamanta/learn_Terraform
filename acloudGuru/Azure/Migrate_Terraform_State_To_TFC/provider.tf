terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
  # Terraform cloud state migrate
  cloud {
    organization = "test"
    workspaces {
      name = "pes-team"
    }
  }
}

#Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = True
}