provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.22.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "2.3.0"
    }
  }

  backend "azurerm" {
    subscription_id      = "6e33624e-e52c-4cbe-bd14-5714a1116de8"
    resource_group_name  = "rg-aad"
    storage_account_name = "sankhygeneric"
    container_name       = "tfstate"
    key                  = "devk8s.tfstate"
  }
}

