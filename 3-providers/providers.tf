# provider "registry.opentofu.org/hashicorp/azurerm" requires explicit provider block configuration.
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "4.0.1"
        }

        azuread = {
            source  = "hashicorp/azuread"
            version = "2.53.1"
        }
    }
}

# the argument "features" and "subscription_id" is required
provider "azurerm" {
    features {}

    subscription_id = var.subscription_id 

    # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
}

provider "azuread" {
    tenant_id       = var.tenant_id

    # https://registry.terraform.io/providers/hashicorp/azuread/latest/docs
}