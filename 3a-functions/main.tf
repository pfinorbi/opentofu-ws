data "azurerm_client_config" "current" { }

resource "local_file" "forwards" {
    content             = data.azurerm_client_config.current.client_id
    filename            = "clientid.txt"
}

locals {
  char_list = split("", local_file.forwards.content)

  reversed_char_list = reverse(local.char_list)

  reversed_string = join("", local.reversed_char_list)
}

resource "local_file" "clientid_backwards" {
    content             = local.reversed_string
    filename            = "clientid-backwards.txt"
}
