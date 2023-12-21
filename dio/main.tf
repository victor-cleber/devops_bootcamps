resource "azurerm_resource_group" "rg-terraform" {
  name     = "rg-terraform"
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "st-terraform" {
  depends_on               = [azurerm_resource_group.rg-terraform]
  name                     = "staccterraformdevops"
  resource_group_name      = azurerm_resource_group.rg-terraform.name
  location                 = azurerm_resource_group.rg-terraform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
  lifecycle {
    #prevent_destroy = true
  }
}

resource "azurerm_storage_container" "cont-terraform" {
  depends_on           = [azurerm_storage_account.st-terraform]
  name                 = "tf-state-container"
  storage_account_name = azurerm_storage_account.st-terraform.name
}