variable "subscription_id" {
    type        = string
}

variable "name_prefix" {
  default       = "tofu-ws"
  type          = string
  description   = "A default name prefix to be added to the resources." 
}

variable "vm_minimum_memory" {
  description   = "Minimum memory in GB for the VM"
  default       = 4 
}