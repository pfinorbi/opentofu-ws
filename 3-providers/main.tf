resource "azurerm_resource_group" "rg" {
    name                = "tofu-ws-rg"
    location            = var.region
}

data "azurerm_client_config" "current" { }

data "azuread_user" "current_user" {
    object_id           = data.azurerm_client_config.current.object_id 
}

resource "local_file" "my_user" {
    content             = data.azuread_user.current_user.display_name
    filename            = var.file_name
}

resource "azurerm_storage_account" "sa" {
    name                        = "tofuwssa"
    resource_group_name         = azurerm_resource_group.rg.name
    location                    = var.region
    account_tier                = "Standard" 
    account_replication_type    = "LRS"
}

resource "azurerm_storage_container" "sa_cont" {
    name                        = "content"
    storage_account_name        = azurerm_storage_account.sa.name
    container_access_type       = "private"  
}

resource "azurerm_storage_blob" "blob" {
    name                        = var.file_name
    storage_account_name        = azurerm_storage_account.sa.name
    storage_container_name      = azurerm_storage_container.sa_cont.name
    type                        = "Block" 
    source                      = var.file_name
}