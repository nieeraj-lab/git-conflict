resource "azurerm_resource_group" "rg-git" {
  name     = "rg-git"
  location = "central India" 
}

resource "azurerm_resource_group" "rg-git2" {
  name     = "rg-git2"
  location = "central India"
}

resource "azurerm_storage_account" "sa-patlu" {
  name                     = "sa-patlu"
  resource_group_name      = azurerm_resource_group.rg-git.name
  location                 = azurerm_resource_group.rg-git.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}