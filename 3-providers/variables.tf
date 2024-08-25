variable "subscription_id" {
    type        = string
}

variable "tenant_id" {
    type        = string 
}

variable "region" {
    type        = string
    description = "The Azure region to deploy resources to."
    default     = "westeurope"
}

variable "file_name" {
    type        = string
    default     = "my_user.txt"

}