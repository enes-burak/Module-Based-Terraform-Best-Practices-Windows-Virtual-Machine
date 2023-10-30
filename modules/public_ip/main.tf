
resource "azurerm_public_ip" "public-ip" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
}