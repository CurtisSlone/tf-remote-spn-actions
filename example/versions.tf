terraform {
    required_version = ">= 1.2"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.22"
    }
    azurenoopsutils = {
        source = "azurenoops/azurenoopsutils"
        version = "~> 1.0.4"
    }
  }
  backend "azurerm" {
    use_azuread          = true
    storage_account_name = "testorgtfstatesahv7z1pme"
    container_name = "testorgtfdevschv7z1pme"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
}