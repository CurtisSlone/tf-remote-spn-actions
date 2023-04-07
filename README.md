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

Create an app registration, generate secret, create spn and give it contributor access to the identified subscription. Create storage accounts, storage, containers, and key vault to support access_key. The object_id must match your app registration. The storage resource depends on the spn creation.

#### 2:



### Caveats
This project is dependent upon an application registration with permissions to the relevant subscription AND keyvault

## Current Errors
