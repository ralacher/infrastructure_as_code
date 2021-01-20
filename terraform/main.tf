provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.40.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "rg-demo-terraform"
  location = var.location
}

# Create an storage account
resource "azurerm_storage_account" "sa" {
  name                     = var.storageAccountName
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create a storage container
resource "azurerm_storage_container" "cn" {
  name                  = var.containerName
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}