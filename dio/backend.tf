terraform{
    backend "azurerm" {
        resource_group_name = "rg-terraform"
        storage_account_name = "staccterraformdevops"
        container_name = "tf-state-container"
        key = "terraform.tfstate"
  }
}