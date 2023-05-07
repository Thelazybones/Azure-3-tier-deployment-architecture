variable "name" {
  type = string
  description = "the name of the keyvault"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "account_tier" {
  type = string
  
}

variable "blob_container" {
  type = string
  
}