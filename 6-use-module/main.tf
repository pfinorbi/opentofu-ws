module "app" {
    source = "../4-az-vm-instance"

    name_prefix         = "tofu-ws"
    vm_minimum_memory   = 4
    subscription_id     = var.subscription_id 
}