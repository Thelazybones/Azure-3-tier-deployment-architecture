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

variable "sku_name" {
  type = string
  default = "standard"
}