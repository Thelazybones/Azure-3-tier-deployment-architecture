resource "random_password" "password" {
  count = 1
  length = var.length
  special = var.enable_special_characters
}