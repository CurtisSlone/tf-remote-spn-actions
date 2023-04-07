# **Remote-State with SPN and GitHub Actions**

## Purpose
Create remote state, and deploy to Azure using Github actions

## NoOps Overlays Used

terraform-azurerm-overlays-resource-group

terraform-azuread-overlays-service-principal

## Resources Used

Random
Storage
KeyVault

### Dependencies
The resource group, storage accounts and storage containers must be deployed before wiring up the backend.

### Steps To Success

#### 1:

Create an app registration, grant it the Cloud App Admin, and give it contributor access to the identified subscription. This cannot be done in terraform :(

#### 2:

Create storage accounts, storage, containers, and key vault to support access_key.

### Caveats
This project is dependent upon an application registration with permissions to the relevant subscription AND keyvault

## Current Errors
